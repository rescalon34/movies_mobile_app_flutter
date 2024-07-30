import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../bloc/user_authentication/user_authentication_bloc.dart';
import '../../components/elevated_large_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildLoginBody(context),
    );
  }

  Widget _buildLoginBody(
    BuildContext context,
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
              context.read<UserAuthenticationBloc>().add(const LoggedIn());
            },
          )
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
        Gap(16),
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
