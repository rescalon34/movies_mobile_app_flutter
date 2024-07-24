import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/movie_detail/movie_details_args.dart';

import '../../../presentation/pages/home/home_page.dart';
import '../../../presentation/pages/movie_detail/movie_details_page.dart';
import '../app_routes.dart';

part 'home_routes.g.dart';

List<GoRoute> getHomeRoutes() {
  return [
    GoRoute(
      path: AppRoutes.homePagePath,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: HomePage()),
    ),
    GoRoute(
      path: AppRoutes.movieDetailsPagePath,
      name: AppRoutes.movieDetailsPagePath.name,
      builder: (context, state) {
        String releaseDate = state.uri.queryParameters['releaseDate'] ?? "";
        return MovieDetailsPage(
          releaseDate: releaseDate,
        );
      },
    )
  ];
}

@TypedGoRoute<HomePageRoute>(
  path: AppRoutes.homePagePath,
  routes: [
    TypedGoRoute<MovieDetailsPageRoute>(
      path: AppRoutes.movieDetailsPage,
    )
  ],
)
class HomePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class MovieDetailsPageRoute extends GoRouteData {
  final String? releaseDate;
  final MovieDetailsArgs? $extra;

  const MovieDetailsPageRoute({
    this.releaseDate,
    this.$extra,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MovieDetailsPage(
      releaseDate: releaseDate,
      args: $extra,
    );
  }
}
