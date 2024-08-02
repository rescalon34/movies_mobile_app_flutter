import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_mobile_app_flutter/core/di/di_main_module.dart';
import 'package:movies_mobile_app_flutter/core/navigation/main_routes.dart';
import 'package:movies_mobile_app_flutter/core/theme/movies_app_theme.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/user_authentication/user_authentication_bloc.dart';

void main() async {
  await setupDependencyModules();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserAuthenticationBloc>(
      create: (context) => getIt<UserAuthenticationBloc>(),
      child: MaterialApp.router(
        title: 'Home',
        debugShowCheckedModeBanner: false,
        theme: MoviesAppTheme.light,
        darkTheme: MoviesAppTheme.dark,
        routerConfig: getIt<MainRoutes>().mainGoRouter,
      ),
    );
  }
}
