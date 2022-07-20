import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/model/entities/movie_detail/movie_detail.dart';
import 'package:movies_app/model/movie_detail.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MovieDetailRoute extends GoRouteData {
  const MovieDetailRoute();

  @override
  Widget build(BuildContext context) => const MovieDetailPage();
}

class MovieDetailPage extends ConsumerWidget {
  const MovieDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void pop() => Navigator.of(context).pop();
    final movieDetail = ref.watch(movieDetailProvider).value ?? MovieDetail();
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: Colors.black,
        middle: Text(
          movieDetail.title,
          style: const TextStyle(color: Colors.white),
        ),
        leading: _NavigationBarButton(
          onPressed: pop,
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                movieDetail.posterPath.isEmpty
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SizedBox(
                        width: double.infinity,
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w154/${movieDetail.posterPath}',
                          fit: BoxFit.cover,
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                                color: Colors.white,
                              ),
                            );
                          },
                        ),
                      ),
                const SizedBox(height: 8),
                Text(movieDetail.overview),
                OutlinedButton(
                  onPressed: () => _launchURL(movieDetail.homePageUrl),
                  child: const Text('ページを見る'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavigationBarButton extends StatelessWidget {
  const _NavigationBarButton({
    @required this.onPressed,
    required this.child,
  });

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: child,
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
