import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/login/login_page.dart';

import '../../app_route_paths.dart';
import '../../base_go_route_data.dart';

part 'authentication_routes.g.dart';

@TypedGoRoute<LoginPageRoute>(path: AppRoutePaths.loginPagePath)
class LoginPageRoute extends BaseGoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();

  @override
  String get location => AppRoutePaths.loginPagePath;
}
