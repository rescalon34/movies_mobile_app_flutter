import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../presentation/bloc/user_authentication/user_authentication_bloc.dart';
import '../app_route_paths.dart';

/// This class responsible for handling authentication-based, and onboarding flow redirections within the app.
class AuthRedirector {
  final UserAuthenticationBloc _authBloc;

  AuthRedirector(this._authBloc);

  /// This function could work as a "redirector" whenever receiving a 401 error code from the API
  /// on any screen.
  String? authRedirectorHandler(BuildContext context, GoRouterState state) {
    // TODO: commenting this out for now, need to review later.
    bool isAuthenticated = _authBloc.state is Authenticated;
    final goingToLogin = state.uri.toString() == AppRoutePaths.loginPagePath;

    // if (!isAuthenticated) {
    //   print("tellAuthStatus: redirect to login!");
    //   return context.navigator.redirectTo(LoginPageRoute());
    // }
    //
    // if (isAuthenticated && goingToLogin) {
    //   print("tellAuthStatus: redirect to home!");
    //   return context.navigator.redirectTo(HomePageRoute());
    // }
    return null;
  }
}
