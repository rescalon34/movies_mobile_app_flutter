import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/app_routes.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

import '../routes/watchlist_routes.dart';

final _watchlistNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'Watchlist');

StatefulShellBranch getWatchlistBranch() {
  return StatefulShellBranch(
    initialLocation: AppRoutes.watchlistPage.path,
    navigatorKey: _watchlistNavigatorKey,
    routes: getWatchlistRoutes(),
  );
}
