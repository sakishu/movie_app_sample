import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/model/movie_list.dart';
import 'package:movies_app/pages/movie_page/movie_card.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(
          'Movies',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: _ListView(),
    );
  }
}

class _ListView extends ConsumerWidget {
  const _ListView();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieList = ref.watch(movieListProvider).value ?? [];
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: movieList.length,
      itemBuilder: (_, index) => MovieCard(movieList[index]),
    );
  }
}
