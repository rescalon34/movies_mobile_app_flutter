import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/branches/download_branch.dart';
import 'package:movies_mobile_app_flutter/core/navigation/branches/home_branch.dart';
import 'package:movies_mobile_app_flutter/core/navigation/branches/profile_branch.dart';
import 'package:movies_mobile_app_flutter/core/navigation/branches/search_branch.dart';
import 'package:movies_mobile_app_flutter/core/navigation/branches/watchlist_branch.dart';

import '../../presentation/main/bottom_navigation/main_scaffold_with_nav_bar.dart';
import 'app_route_paths.dart';

class MainRoutes {
  final GlobalKey<NavigatorState> _rootNavigatorKey;

  MainRoutes() : _rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter get mainGoRouter {
    return GoRouter(
      initialLocation: AppRoutePaths.homePagePath,
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
