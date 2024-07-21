import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/search/search_page.dart';

import '../app_routes.dart';

List<GoRoute> getSearchRoutes() {
  return [
    GoRoute(
      path: AppRoutes.searchPage.path,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: SearchPage()),
    ),
    // Add other routes belonging to search branch
  ];
}
