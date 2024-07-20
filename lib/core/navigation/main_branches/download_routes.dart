import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/download/download_page.dart';

import '../navigation_routes.dart';

StatefulShellBranch getDownloadBranch() {
  return StatefulShellBranch(
    routes: [
      GoRoute(
        path: NavigationRoutes.downloadPagePath,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: DownloadPage(),
        ),
      ),
    ],
  );
}
