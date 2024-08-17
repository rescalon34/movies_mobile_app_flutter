import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/app_route_paths.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/profile/profile_routes.dart';

final _profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Profile');

StatefulShellBranch getProfileBranch() {
  return StatefulShellBranch(
    initialLocation: AppRoutePaths.profilePagePath,
    navigatorKey: _profileNavigatorKey,
    routes: getProfileRoutes(),
  );
}
