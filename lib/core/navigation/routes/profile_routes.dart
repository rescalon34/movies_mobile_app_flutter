import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/profile/profile_page.dart';

import '../../../presentation/pages/settings/settings_a_page.dart';
import '../../../presentation/pages/settings/settings_b_page.dart';
import '../../../presentation/pages/settings/settings_c_page.dart';
import '../../../presentation/pages/settings/settings_d_page.dart';
import '../app_routes.dart';

List<GoRoute> getProfileRoutes() {
  return [
    GoRoute(
      path: AppRoutes.profilePagePath,
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: AppRoutes.settingsAPagePath,
      name: AppRoutes.settingsAPageName,
      builder: (context, state) => const SettingsAPage(),
    ),
    GoRoute(
      path: AppRoutes.settingsBPagePath,
      name: AppRoutes.settingsBPageName,
      builder: (context, state) => const SettingsBPage(),
    ),
    GoRoute(
      path: AppRoutes.settingsCPagePath,
      name: AppRoutes.settingsCPageName,
      builder: (context, state) => const SettingsCPage(),
    ),
    GoRoute(
      path: AppRoutes.settingsDPagePath,
      name: AppRoutes.settingsDPageName,
      builder: (context, state) => const SettingsDPage(),
    )
  ];
}
