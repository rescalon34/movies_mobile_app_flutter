import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies_mobile_app_flutter/core/extension/app_core_extensions.dart';
import 'package:movies_mobile_app_flutter/core/extension/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/home/home_routes.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/login/authentication_routes.dart';

import '../../../core/di/di_main_module.dart';
import '../../bloc/user_authentication/user_authentication_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final UserAuthenticationBloc _authBloc = getIt<UserAuthenticationBloc>();

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(seconds: 3));
    bool isAuthenticated = _authBloc.state is Authenticated;

    if (!mounted) return;
    if (isAuthenticated) {
      context.navigator.navigateTo(HomePageRoute());
    } else {
      context.navigator.navigateTo(LoginPageRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    context.setStatusBarColor(
      color: Theme.of(context).colorScheme.primaryContainer,
    );

    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 120,
                child: Image.asset('assets/ic_movie.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
