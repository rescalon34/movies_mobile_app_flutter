import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/domain/model/movie.dart';

import '../../../presentation/pages/home/home_page.dart';
import '../../../presentation/pages/movie_detail/movie_details_page.dart';
import '../app_routes.dart';

part 'home_routes.g.dart';

List<GoRoute> getHomeRoutes() {
  return [
    GoRoute(
      path: AppRoutes.homePage.path,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: HomePage()),
    ),
    GoRoute(
      path: AppRoutes.movieDetailsPage.path,
      name: AppRoutes.movieDetailsPage.name,
      builder: (context, state) {
        String movieName = state.uri.queryParameters['movieName'] ?? "";
        String releaseDate = state.uri.queryParameters['releaseDate'] ?? "";
        Movie? movie = state.extra as Movie?;
        return MovieDetailsPage(
          movieName: movieName,
          releaseDate: releaseDate,
          movie: movie,
        );
      },
    )
  ];
}

@TypedGoRoute<HomeRoute>(
    path: "/${AppRoutes.homePage}",
    routes: [TypedGoRoute<MovieDetailsRoute>(path: AppRoutes.movieDetailsPage)])
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class MovieDetailsRoute extends GoRouteData {
  final String? $extra;

  const MovieDetailsRoute({this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MovieDetailsPage(
      $extraData: $extra,
    );
  }
}
