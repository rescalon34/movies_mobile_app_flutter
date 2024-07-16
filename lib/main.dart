import 'package:flutter/material.dart';
import 'package:movies_mobile_app_flutter/core/di/service_locator.dart';
import 'package:movies_mobile_app_flutter/presentation/main/main_page_content.dart';

void main() async {
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Home',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
          useMaterial3: true,
        ),
        home: const MainPageContent());
  }
}
