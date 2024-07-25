import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/profile/profile_page.dart';

import '../../../presentation/pages/settings/settings_a_page.dart';
import '../../../presentation/pages/settings/settings_b_page.dart';
import '../../../presentation/pages/settings/settings_c_page.dart';
import '../../../presentation/pages/settings/settings_d_page.dart';
import '../app_route_paths.dart';
import '../base_go_route_data.dart';

part 'profile_routes.g.dart';

// List<GoRoute> getProfileRoutes() {
//   return [
//     GoRoute(
//       path: AppRoutePaths.profilePagePath,
//       builder: (context, state) => const ProfilePage(),
//     ),
//     GoRoute(
//       path: AppRoutePaths.settingsAPagePath,
//       name: AppRoutePaths.settingsAPagePath.name,
//       builder: (context, state) => const SettingsAPage(),
//     ),
//     GoRoute(
//       path: AppRoutePaths.settingsBPagePath,
//       name: AppRoutePaths.settingsBPagePath.name,
//       builder: (context, state) => const SettingsBPage(),
//     ),
//     GoRoute(
//       path: AppRoutePaths.settingsCPagePath,
//       name: AppRoutePaths.settingsCPagePath.name,
//       builder: (context, state) => const SettingsCPage(),
//     ),
//     GoRoute(
//       path: AppRoutePaths.settingsDPagePath,
//       name: AppRoutePaths.settingsDPagePath.name,
//       builder: (context, state) => const SettingsDPage(),
//     )
//   ];
// }

List<RouteBase> getProfileRoutes() => $appRoutes;

@TypedGoRoute<ProfilePageRoute>(path: AppRoutePaths.profilePagePath)
class ProfilePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfilePage();
}

@TypedGoRoute<SettingsAPageRoute>(path: AppRoutePaths.settingsAPagePath)
class SettingsAPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsAPage();
}

@TypedGoRoute<SettingsBPageRoute>(path: AppRoutePaths.settingsBPagePath)
class SettingsBPageRoute extends BaseGoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsBPage();

  @override
  String get location => AppRoutePaths.settingsBPagePath;
}

@TypedGoRoute<SettingsCPageRoute>(path: AppRoutePaths.settingsCPagePath)
class SettingsCPageRoute extends BaseGoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsCPage();

  @override
  String get location => AppRoutePaths.settingsCPagePath;
}

@TypedGoRoute<SettingsDPageRoute>(path: AppRoutePaths.settingsDPagePath)
class SettingsDPageRoute extends BaseGoRouteData {
  @override
  Widget build(context, state) => const SettingsDPage();

  @override
  String get location => AppRoutePaths.settingsDPagePath;
}
