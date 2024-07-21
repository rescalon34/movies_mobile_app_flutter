import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/profile/profile_page.dart';

import '../../../presentation/pages/settings/settings_a_page.dart';
import '../../../presentation/pages/settings/settings_b_page.dart';
import '../../../presentation/pages/settings/settings_c_page.dart';
import '../../../presentation/pages/settings/settings_d_page.dart';
import '../app_routes.dart';

List<GoRoute> getProfileRoutes() {
  return [
    GoRoute(
      path: AppRoutes.profilePage.path,
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: AppRoutes.settingsAPage.path,
      name: AppRoutes.settingsAPage.name,
      builder: (context, state) => const SettingsAPage(),
    ),
    GoRoute(
      path: AppRoutes.settingsBPage.path,
      name: AppRoutes.settingsBPage.name,
      builder: (context, state) => const SettingsBPage(),
    ),
    GoRoute(
      path: AppRoutes.settingsCPage.path,
      name: AppRoutes.settingsCPage.name,
      builder: (context, state) => const SettingsCPage(),
    ),
    GoRoute(
      path: AppRoutes.settingsDPage.path,
      name: AppRoutes.settingsDPage.name,
      builder: (context, state) => const SettingsDPage(),
    )
  ];
}
