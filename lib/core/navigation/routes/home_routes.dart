import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/movie_detail/movie_details_args.dart';

import '../../../presentation/pages/home/home_page.dart';
import '../../../presentation/pages/movie_detail/movie_details_page.dart';
import '../app_route_paths.dart';
import '../base_go_route_data.dart';

part 'home_routes.g.dart';

// List<GoRoute> getHomeRoutes() {
//   return [
//     GoRoute(
//       path: AppRoutePaths.homePagePath,
//       pageBuilder: (context, state) =>
//           const NoTransitionPage(child: HomePage()),
//     ),
//     GoRoute(
//       path: AppRoutePaths.movieDetailsPagePath,
//       name: AppRoutePaths.movieDetailsPagePath.name,
//       builder: (context, state) {
//         String releaseDate = state.uri.queryParameters['releaseDate'] ?? "";
//         return MovieDetailsPage(
//           releaseDate: releaseDate,
//         );
//       },
//     )
//   ];
// }

List<RouteBase> getHomeRoutes() => $appRoutes;

@TypedGoRoute<HomePageRoute>(path: AppRoutePaths.homePagePath)
class HomePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<MovieDetailsPageRoute>(path: AppRoutePaths.movieDetailsPagePath)
class MovieDetailsPageRoute extends BaseGoRouteData {
  final String? releaseDate;
  final MovieDetailsArgs? $extra;

  MovieDetailsPageRoute({
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

  @override
  String get location => AppRoutePaths.movieDetailsPagePath;
}
