import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/model/entities/movie/movie.dart';

final movieNotifierProvider = StateNotifierProvider<MovieNotifier, Movie>(
  (ref) => MovieNotifier(),
);

class MovieNotifier extends StateNotifier<Movie> {
  MovieNotifier() : super(Movie());

  void inputMovieId(int id) {
    state = state.copyWith(id: id);
  }
}
