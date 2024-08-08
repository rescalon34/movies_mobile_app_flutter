import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movies_mobile_app_flutter/core/di/di_main_module.dart';
import 'package:movies_mobile_app_flutter/core/extension/app_core_extensions.dart';
import 'package:movies_mobile_app_flutter/core/extension/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/home/home_routes.dart';

import '../../../core/util/shared_pref_helper.dart';
import '../../components/elevated_large_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SharedPrefHelper shredPref = getIt<SharedPrefHelper>();

    context.setStatusBarColor();

    return Scaffold(
      body: _buildLoginBody(
        context,
        shredPref,
      ),
    );
  }

  Widget _buildLoginBody(
    BuildContext context,
    SharedPrefHelper sharedPref,
  ) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Gap(60),
          _buildHeaderContent(context),
          const Gap(48),
          _buildFormTextFields(),
          const Spacer(flex: 1),
          ElevatedLargeButton(
            text: "Login",
            onClick: () {
              context.navigator.navigateTo(HomePageRoute());
              sharedPref.setString(SharedPrefHelperImpl.userNameKey, "Robert!");
            },
          ),
          const Gap(32),
        ],
      ),
    );
  }

  Widget _buildHeaderContent(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: Image.asset('assets/ic_movie.png'),
        ),
        const Gap(16),
        Text(
          "By signing in, you'll be able to see the movies content.",
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  Widget _buildFormTextFields() {
    return const Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: "Username",
            border: OutlineInputBorder(),
          ),
        ),
        Gap(24),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
