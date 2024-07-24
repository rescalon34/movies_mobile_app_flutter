import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/watchlist/watchlist_page.dart';

import '../app_route_paths.dart';

part 'watchlist_routes.g.dart';

// List<GoRoute> getWatchlistRoutes() {
//   return [
//     GoRoute(
//       path: AppRoutePaths.watchlistPagePath,
//       pageBuilder: (context, state) =>
//           const NoTransitionPage(child: WatchlistPage()),
//     ),
//     // Add other routes belonging to watchlist branch
//   ];
// }

List<RouteBase> getWatchlistRoutes() => $appRoutes;

@TypedGoRoute<WatchlistPageRoute>(
  path: AppRoutePaths.watchlistPagePath,
)
class WatchlistPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WatchlistPage();
}
