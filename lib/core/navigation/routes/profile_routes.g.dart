// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $profilePageRoute,
      $settingsAPageRoute,
      $settingsBPageRoute,
      $settingsCPageRoute,
      $settingsDPageRoute,
    ];

RouteBase get $profilePageRoute => GoRouteData.$route(
      path: '/profile-page',
      factory: $ProfilePageRouteExtension._fromState,
    );

extension $ProfilePageRouteExtension on ProfilePageRoute {
  static ProfilePageRoute _fromState(GoRouterState state) => ProfilePageRoute();

  String get location => GoRouteData.$location(
        '/profile-page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsAPageRoute => GoRouteData.$route(
      path: '/settings-a-page',
      factory: $SettingsAPageRouteExtension._fromState,
    );

extension $SettingsAPageRouteExtension on SettingsAPageRoute {
  static SettingsAPageRoute _fromState(GoRouterState state) =>
      SettingsAPageRoute();

  String get location => GoRouteData.$location(
        '/settings-a-page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsBPageRoute => GoRouteData.$route(
      path: '/settings-b-page',
      factory: $SettingsBPageRouteExtension._fromState,
    );

extension $SettingsBPageRouteExtension on SettingsBPageRoute {
  static SettingsBPageRoute _fromState(GoRouterState state) =>
      SettingsBPageRoute();

  String get location => GoRouteData.$location(
        '/settings-b-page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsCPageRoute => GoRouteData.$route(
      path: '/settings-c-page',
      factory: $SettingsCPageRouteExtension._fromState,
    );

extension $SettingsCPageRouteExtension on SettingsCPageRoute {
  static SettingsCPageRoute _fromState(GoRouterState state) =>
      SettingsCPageRoute();

  String get location => GoRouteData.$location(
        '/settings-c-page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsDPageRoute => GoRouteData.$route(
      path: '/settings-d-page',
      factory: $SettingsDPageRouteExtension._fromState,
    );

extension $SettingsDPageRouteExtension on SettingsDPageRoute {
  static SettingsDPageRoute _fromState(GoRouterState state) =>
      SettingsDPageRoute();

  String get location => GoRouteData.$location(
        '/settings-d-page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
