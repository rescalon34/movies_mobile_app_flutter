import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/app_routes.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/profile_routes.dart';

final _profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Profile');

StatefulShellBranch getProfileBranch() {
  return StatefulShellBranch(
    initialLocation: AppRoutes.profilePagePath,
    navigatorKey: _profileNavigatorKey,
    routes: getProfileRoutes(),
  );
}
