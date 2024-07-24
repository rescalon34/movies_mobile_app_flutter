import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/download_routes.dart';

import '../app_route_paths.dart';

final _downloadNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Download');

StatefulShellBranch getDownloadBranch() {
  return StatefulShellBranch(
    initialLocation: AppRoutePaths.downloadPagePath,
    navigatorKey: _downloadNavigatorKey,
    routes: getDownloadRoutes(),
  );
}
