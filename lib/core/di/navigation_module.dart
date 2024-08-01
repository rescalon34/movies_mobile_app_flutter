import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_mobile_app_flutter/core/navigation/main_routes.dart';
import 'package:movies_mobile_app_flutter/core/navigation/redirect/auth_redirector.dart';

import '../../presentation/bloc/user_authentication/user_authentication_bloc.dart';
import '../navigation/app_navigator/app_navigator.dart';

Future<void> setupNavigationModule(GetIt getIt) async {
  getIt.registerFactoryParam<AppNavigator, BuildContext, void>(
    (context, _) => AppNavigatorImpl(context),
  );

  getIt.registerSingleton<AuthRedirector>(
    AuthRedirector(getIt<UserAuthenticationBloc>()),
  );

  /// Create MainRoutes instance with DI.
  /// we can skip the type as follow implementation.
  /// However, we can also add them if we want.
  /// Example: MainRoutes(getIt<UserAuthenticationBloc>(), getIt<AuthRedirector>())
  getIt.registerSingleton<MainRoutes>(MainRoutes(getIt(), getIt(), getIt()));
}
