import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/home/home_page.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/movie_detail/movie_details_page.dart';

import '../navigation_routes.dart';

final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Home');

StatefulShellBranch getHomeBranch() {
  return StatefulShellBranch(
    navigatorKey: _homeNavigatorKey,
    routes: [
      GoRoute(
        path: NavigationRoutes.homePagePath,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: HomePage()),
        routes: [
          GoRoute(
            path:
                "${NavigationRoutes.movieDetailsPageName}/:movieName/:releaseDate",
            name: NavigationRoutes.movieDetailsPageName,
            builder: (context, state) => MovieDetailsPage(
              movieName: state.pathParameters["movieName"],
              releaseDate: state.pathParameters["releaseDate"],
            ),
          ),
        ],
      ),
    ],
  );
}
