import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/app_routes.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/profile_routes.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

final _profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Profile');

StatefulShellBranch getProfileBranch() {
  return StatefulShellBranch(
    initialLocation: AppRoutes.profilePage.path,
    navigatorKey: _profileNavigatorKey,
    routes: getProfileRoutes(),
  );
}
