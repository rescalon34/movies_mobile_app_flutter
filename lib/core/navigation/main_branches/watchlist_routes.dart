import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/watchlist/watchlist_page.dart';

import '../navigation_routes.dart';

StatefulShellBranch getWatchlistBranch() {
  return StatefulShellBranch(
    routes: [
      GoRoute(
        path: NavigationRoutes.watchlistPagePath,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: WatchlistPage(),
        ),
      ),
    ],
  );
}
