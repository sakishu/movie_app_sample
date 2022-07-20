// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $moviesRoute,
    ];

GoRoute get $moviesRoute => GoRouteData.$route(
      path: '/',
      factory: $MoviesRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'movieDetail',
          factory: $MovieDetailRouteExtension._fromState,
        ),
      ],
    );

extension $MoviesRouteExtension on MoviesRoute {
  static MoviesRoute _fromState(GoRouterState state) => const MoviesRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $MovieDetailRouteExtension on MovieDetailRoute {
  static MovieDetailRoute _fromState(GoRouterState state) =>
      const MovieDetailRoute();

  String get location => GoRouteData.$location(
        '/movieDetail',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
