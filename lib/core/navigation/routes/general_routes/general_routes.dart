import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../../presentation/pages/generic/generic_page.dart';
import '../../../../presentation/pages/splash/splash_page.dart';
import '../../../util/base_go_route_data.dart';
import '../../app_route_paths.dart';

part 'general_routes.g.dart';

List<RouteBase> getGeneralRoutes() => $appRoutes;

@TypedGoRoute<SplashPageRoute>(path: AppRoutePaths.splashPagePath)
class SplashPageRoute extends BaseGoRouteData {
  SplashPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashPage();
  }

  @override
  String get location => AppRoutePaths.genericPagePath;
}

@TypedGoRoute<GenericPageRoute>(path: AppRoutePaths.genericPagePath)
class GenericPageRoute extends BaseGoRouteData {
  final String? title;

  GenericPageRoute({this.title});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return GenericPage(screenTitle: title);
  }

  @override
  String get location => AppRoutePaths.genericPagePath;
}
