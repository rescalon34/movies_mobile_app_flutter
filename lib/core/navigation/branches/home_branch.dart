import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

import '../app_routes.dart';
import '../routes/home_routes.dart';

final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Home');

StatefulShellBranch getHomeBranch() {
  return StatefulShellBranch(
    initialLocation: AppRoutes.homePage.path,
    navigatorKey: _homeNavigatorKey,
    // routes: getHomeRoutes());
    routes: $appRoutes,
  );
}
