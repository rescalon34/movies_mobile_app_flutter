// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $downloadPageRoute,
    ];

RouteBase get $downloadPageRoute => GoRouteData.$route(
      path: '/download-page',
      factory: $DownloadPageRouteExtension._fromState,
    );

extension $DownloadPageRouteExtension on DownloadPageRoute {
  static DownloadPageRoute _fromState(GoRouterState state) =>
      DownloadPageRoute();

  String get location => GoRouteData.$location(
        '/download-page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
