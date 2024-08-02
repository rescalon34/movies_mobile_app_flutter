// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $watchlistPageRoute,
    ];

RouteBase get $watchlistPageRoute => GoRouteData.$route(
      path: '/watchlist-page',
      factory: $WatchlistPageRouteExtension._fromState,
    );

extension $WatchlistPageRouteExtension on WatchlistPageRoute {
  static WatchlistPageRoute _fromState(GoRouterState state) =>
      WatchlistPageRoute();

  String get location => GoRouteData.$location(
        '/watchlist-page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
