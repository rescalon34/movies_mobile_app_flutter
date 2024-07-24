import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/search/search_page.dart';

import '../app_routes.dart';

part 'search_routes.g.dart';

// List<GoRoute> getSearchRoutes() {
//   return [
//     GoRoute(
//       path: AppRoutes.searchPagePath,
//       pageBuilder: (context, state) =>
//           const NoTransitionPage(child: SearchPage()),
//     ),
//     // Add other routes belonging to search branch
//   ];
// }

List<RouteBase> getSearchRoutes() => $appRoutes;

@TypedGoRoute<SearchPageRoute>(
  path: AppRoutes.searchPagePath,
)
class SearchPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const SearchPage();
}
