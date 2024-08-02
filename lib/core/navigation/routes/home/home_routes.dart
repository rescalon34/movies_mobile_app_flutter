import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/movie_detail/movie_details_args.dart';

import '../../../../presentation/pages/home/home_page.dart';
import '../../../../presentation/pages/movie_detail/movie_details_page.dart';
import '../../app_route_paths.dart';
import '../../../util/base_go_route_data.dart';

part 'home_routes.g.dart';

List<RouteBase> getHomeRoutes() => $appRoutes;

@TypedGoRoute<HomePageRoute>(path: AppRoutePaths.homePagePath)
class HomePageRoute extends BaseGoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }

  @override
  String get location => AppRoutePaths.homePagePath;
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
