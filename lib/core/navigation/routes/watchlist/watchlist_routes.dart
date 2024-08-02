import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/util/base_go_route_data.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/watchlist/watchlist_page.dart';

import '../../app_route_paths.dart';

part 'watchlist_routes.g.dart';

List<RouteBase> getWatchlistRoutes() => $appRoutes;

@TypedGoRoute<WatchlistPageRoute>(path: AppRoutePaths.watchlistPagePath)
class WatchlistPageRoute extends BaseGoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WatchlistPage();

  @override
  String get location => AppRoutePaths.watchlistPagePath;
}
