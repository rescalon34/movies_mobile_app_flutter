import 'package:flutter/material.dart';
import 'package:movies_mobile_app_flutter/core/di/service_locator.dart';
import 'package:movies_mobile_app_flutter/core/navigation/main_routes.dart';
import 'package:movies_mobile_app_flutter/core/theme/movies_app_theme.dart';

void main() async {
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: MoviesAppTheme.light,
      darkTheme: MoviesAppTheme.dark,
      routerConfig: MainRoutes().mainGoRouter,
    );
  }
}
