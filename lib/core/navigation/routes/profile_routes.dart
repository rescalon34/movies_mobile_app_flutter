import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/profile/profile_page.dart';

import '../../../presentation/pages/settings/settings_a_page.dart';
import '../../../presentation/pages/settings/settings_b_page.dart';
import '../../../presentation/pages/settings/settings_c_page.dart';
import '../../../presentation/pages/settings/settings_d_page.dart';
import '../app_routes.dart';

part 'profile_routes.g.dart';

// List<GoRoute> getProfileRoutes() {
//   return [
//     GoRoute(
//       path: AppRoutes.profilePagePath,
//       builder: (context, state) => const ProfilePage(),
//     ),
//     GoRoute(
//       path: AppRoutes.settingsAPagePath,
//       name: AppRoutes.settingsAPagePath.name,
//       builder: (context, state) => const SettingsAPage(),
//     ),
//     GoRoute(
//       path: AppRoutes.settingsBPagePath,
//       name: AppRoutes.settingsBPagePath.name,
//       builder: (context, state) => const SettingsBPage(),
//     ),
//     GoRoute(
//       path: AppRoutes.settingsCPagePath,
//       name: AppRoutes.settingsCPagePath.name,
//       builder: (context, state) => const SettingsCPage(),
//     ),
//     GoRoute(
//       path: AppRoutes.settingsDPagePath,
//       name: AppRoutes.settingsDPagePath.name,
//       builder: (context, state) => const SettingsDPage(),
//     )
//   ];
// }

List<RouteBase> getProfileRoutes() => $appRoutes;

@TypedGoRoute<ProfilePageRoute>(path: AppRoutes.profilePagePath)
class ProfilePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfilePage();
}

@TypedGoRoute<SettingsAPageRoute>(path: AppRoutes.settingsAPagePath)
class SettingsAPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsAPage();
}

@TypedGoRoute<SettingsBPageRoute>(path: AppRoutes.settingsBPagePath)
class SettingsBPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsBPage();
}

@TypedGoRoute<SettingsCPageRoute>(path: AppRoutes.settingsCPagePath)
class SettingsCPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsCPage();
}

@TypedGoRoute<SettingsDPageRoute>(path: AppRoutes.settingsDPagePath)
class SettingsDPageRoute extends GoRouteData {
  @override
  Widget build(context, state) => const SettingsDPage();
}
