import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/search_routes.dart';

import '../app_route_paths.dart';


final _searchNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Search');

StatefulShellBranch getSearchBranch() {
  return StatefulShellBranch(
    initialLocation: AppRoutePaths.searchPagePath,
    navigatorKey: _searchNavigatorKey,
    routes: getSearchRoutes(),
  );
}
