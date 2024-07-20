import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/search/search_page.dart';

import '../navigation_routes.dart';

final _searchNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Search');

StatefulShellBranch getSearchBranch() {
  return StatefulShellBranch(
    navigatorKey: _searchNavigatorKey,
    routes: [
      GoRoute(
        path: NavigationRoutes.searchPagePath,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SearchPage(),
        ),
      ),
    ],
  );
}
