import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../app_route_paths.dart';
import '../routes/home_routes.dart';

final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Home');

StatefulShellBranch getHomeBranch() {
  return StatefulShellBranch(
    initialLocation: AppRoutePaths.homePagePath,
    navigatorKey: _homeNavigatorKey,
    routes: getHomeRoutes(),
  );
}
