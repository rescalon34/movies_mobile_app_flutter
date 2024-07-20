import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/main_branches/download_routes.dart';
import 'package:movies_mobile_app_flutter/core/navigation/main_branches/home_routes.dart';
import 'package:movies_mobile_app_flutter/core/navigation/main_branches/profile_routes.dart';
import 'package:movies_mobile_app_flutter/core/navigation/main_branches/search_routes.dart';
import 'package:movies_mobile_app_flutter/core/navigation/main_branches/watchlist_routes.dart';

import '../../presentation/main/bottom_navigation/main_scaffold_with_nav_bar.dart';
import 'navigation_routes.dart';

class MainRoutes {
  final GlobalKey<NavigatorState> _rootNavigatorKey;

  MainRoutes() : _rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter get mainGoRouter {
    return GoRouter(
      initialLocation: NavigationRoutes.homePagePath,
      navigatorKey: _rootNavigatorKey,
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            // Return the main scaffold container page.
            return MainScaffoldWithNavBar(navigationShell: navigationShell);
          },
          branches: [
            getHomeBranch(),
            getSearchBranch(),
            getWatchlistBranch(),
            getDownloadBranch(),
            getProfileBranch()
          ],
        )
      ],
    );
  }
}
