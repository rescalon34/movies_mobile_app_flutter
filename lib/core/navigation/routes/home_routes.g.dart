// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homePageRoute,
      $movieDetailsPageRoute,
    ];

RouteBase get $homePageRoute => GoRouteData.$route(
      path: '/home-page',
      factory: $HomePageRouteExtension._fromState,
    );

extension $HomePageRouteExtension on HomePageRoute {
  static HomePageRoute _fromState(GoRouterState state) => HomePageRoute();

  String get location => GoRouteData.$location(
        '/home-page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $movieDetailsPageRoute => GoRouteData.$route(
      path: '/movie-details-page',
      factory: $MovieDetailsPageRouteExtension._fromState,
    );

extension $MovieDetailsPageRouteExtension on MovieDetailsPageRoute {
  static MovieDetailsPageRoute _fromState(GoRouterState state) =>
      MovieDetailsPageRoute(
        releaseDate: state.uri.queryParameters['release-date'],
        $extra: state.extra as MovieDetailsArgs?,
      );

  String get location => GoRouteData.$location(
        '/movie-details-page',
        queryParams: {
          if (releaseDate != null) 'release-date': releaseDate,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}
