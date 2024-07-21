import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/download/download_page.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/watchlist/watchlist_page.dart';

import '../app_routes.dart';

List<GoRoute> getDownloadRoutes() {
  return [
    GoRoute(
      path: AppRoutes.downloadPage.path,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: DownloadPage()),
    ),
    // Add other routes belonging to Download branch
  ];
}
