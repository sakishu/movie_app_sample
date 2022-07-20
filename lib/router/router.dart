import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/pages/movie_detail_page/movie_detail_page.dart';
import 'package:movies_app/pages/movie_page/movie_page.dart';

part 'router.g.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
  ),
);

@TypedGoRoute<MoviesRoute>(
  path: '/',
  routes: [
    TypedGoRoute<MovieDetailRoute>(path: 'movieDetail'),
  ],
)
class MoviesRoute extends GoRouteData {
  const MoviesRoute();
  @override
  Widget build(BuildContext context) => MoviePage();
}
