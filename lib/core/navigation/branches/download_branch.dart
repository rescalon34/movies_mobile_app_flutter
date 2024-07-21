import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/download_routes.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

import '../app_routes.dart';

final _downloadNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Download');

StatefulShellBranch getDownloadBranch() {
  return StatefulShellBranch(
    initialLocation: AppRoutes.downloadPage.path,
    navigatorKey: _downloadNavigatorKey,
    routes: getDownloadRoutes(),
  );
}
