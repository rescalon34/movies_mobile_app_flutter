import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/app_route_paths.dart';

import '../routes/watchlist/watchlist_routes.dart';

final _watchlistNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'Watchlist');

StatefulShellBranch getWatchlistBranch() {
  return StatefulShellBranch(
    initialLocation: AppRoutePaths.watchlistPagePath,
    navigatorKey: _watchlistNavigatorKey,
    routes: getWatchlistRoutes(),
  );
}
