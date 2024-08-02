import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

import '../../../presentation/bloc/user_authentication/user_authentication_bloc.dart';
import '../app_route_paths.dart';
import '../routes/home/home_routes.dart';
import '../routes/login/authentication_routes.dart';

/// This class responsible for handling authentication-based, and onboarding flow redirections within the app.
class AuthRedirector {
  final UserAuthenticationBloc _authBloc;

  AuthRedirector(this._authBloc);

  String? authRedirectorHandler(BuildContext context, GoRouterState state) {
    bool isAuthenticated = _authBloc.state is Authenticated;
    print("tellAuthStatus: isAuthenticated: $isAuthenticated");
    final goingToLogin = state.uri.toString() == AppRoutePaths.loginPagePath;

    if (!isAuthenticated) {
      print("tellAuthStatus: redirect to login!");
      return context.navigator.redirectTo(LoginPageRoute());
    }

    if (isAuthenticated && goingToLogin) {
      print("tellAuthStatus: redirect to home!");
      return context.navigator.redirectTo(HomePageRoute());
    }
    return null;
  }
}
