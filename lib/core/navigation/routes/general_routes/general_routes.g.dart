// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $genericPageRoute,
    ];

RouteBase get $genericPageRoute => GoRouteData.$route(
      path: '/generic-page',
      factory: $GenericPageRouteExtension._fromState,
    );

extension $GenericPageRouteExtension on GenericPageRoute {
  static GenericPageRoute _fromState(GoRouterState state) => GenericPageRoute(
        title: state.uri.queryParameters['title'],
      );

  String get location => GoRouteData.$location(
        '/generic-page',
        queryParams: {
          if (title != null) 'title': title,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
