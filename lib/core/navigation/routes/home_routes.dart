import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

import '../../../presentation/pages/home/home_page.dart';
import '../../../presentation/pages/movie_detail/movie_details_page.dart';
import '../app_routes.dart';

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
      builder: (context, state) => const MovieDetailsPage(),
    )
  ];
}
