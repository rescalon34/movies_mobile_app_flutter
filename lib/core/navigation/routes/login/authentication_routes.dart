import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/login/login_page.dart';

import '../../../util/base_go_route_data.dart';
import '../../app_route_paths.dart';

part 'authentication_routes.g.dart';

List<RouteBase> getAuthenticationRoutes() => $appRoutes;

@TypedGoRoute<LoginPageRoute>(path: AppRoutePaths.loginPagePath)
class LoginPageRoute extends BaseGoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();

  @override
  String get location => AppRoutePaths.loginPagePath;
}
