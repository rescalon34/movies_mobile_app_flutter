import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/search_routes.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

import '../app_routes.dart';


final _searchNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Search');

StatefulShellBranch getSearchBranch() {
  return StatefulShellBranch(
    initialLocation: AppRoutes.searchPage.path,
    navigatorKey: _searchNavigatorKey,
    routes: getSearchRoutes(),
  );
}
