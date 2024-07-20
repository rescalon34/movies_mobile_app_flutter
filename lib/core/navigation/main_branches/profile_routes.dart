import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/profile/profile_page.dart';

import '../navigation_routes.dart';

StatefulShellBranch getProfileBranch() {
  return StatefulShellBranch(
    routes: [
      GoRoute(
        path: NavigationRoutes.profilePagePath,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ProfilePage(),
        ),
      ),
    ],
  );
}
