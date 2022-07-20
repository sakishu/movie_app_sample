import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/model/entities/movie/movie.dart';
import 'package:movies_app/model/movie_notifier.dart';
import 'package:movies_app/pages/movie_detail_page/movie_detail_page.dart';
import 'package:movies_app/router/router.dart';

class MovieCard extends ConsumerWidget {
  const MovieCard(this.movie, {super.key});
  final Movie movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const indent = 16.0;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: indent),
      height: 250,
      child: Row(
        children: [
          Image.network(
            'https://image.tmdb.org/t/p/w154/${movie.posterPath}',
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                  color: Colors.white,
                ),
              );
            },
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(movie.releaseDate),
                  OutlinedButton(
                    onPressed: () {
                      ref
                          .watch(movieNotifierProvider.notifier)
                          .inputMovieId(movie.id);
                      const MovieDetailRoute().go(context);
                    },
                    child: const Text(
                      '詳細',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
