import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/base_go_route_data.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/search/search_page.dart';

import '../app_route_paths.dart';

part 'search_routes.g.dart';

List<RouteBase> getSearchRoutes() => $appRoutes;

@TypedGoRoute<SearchPageRoute>(path: AppRoutePaths.searchPagePath)
class SearchPageRoute extends BaseGoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const SearchPage();

  @override
  String get location => AppRoutePaths.searchPagePath;
}
