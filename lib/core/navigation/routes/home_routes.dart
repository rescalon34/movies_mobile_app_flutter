import 'package:go_router/go_router.dart';

import '../../../presentation/pages/home/home_page.dart';
import '../../../presentation/pages/movie_detail/movie_details_page.dart';
import '../app_routes.dart';

List<GoRoute> getHomeRoutes() {
  return [
    GoRoute(
      path: AppRoutes.homePagePath,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: HomePage()),
    ),
    GoRoute(
      path: AppRoutes.movieDetailsPagePath,
      name: AppRoutes.movieDetailsPageName,
      builder: (context, state) => const MovieDetailsPage(),
    )
  ];
}
