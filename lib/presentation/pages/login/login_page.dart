import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:movies_mobile_app_flutter/core/di/di_main_module.dart';
import 'package:movies_mobile_app_flutter/core/extension/app_core_extensions.dart';
import 'package:movies_mobile_app_flutter/core/extension/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/home/home_routes.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/user_authentication/user_authentication_bloc.dart';
import 'package:movies_mobile_app_flutter/presentation/components/generic_icon.dart';

import '../../../core/util/shared_pref_helper.dart';
import '../../components/elevated_large_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  /// MARK: - Main widget builder
  @override
  Widget build(BuildContext context) {
    context.setStatusBarColor();
    final SharedPrefHelper sharedPref = getIt<SharedPrefHelper>();

    return BlocProvider<UserAuthenticationBloc>(
      create: (context) => getIt(),
      child: BlocListener<UserAuthenticationBloc, UserAuthenticationState>(
        listener: (context, state) {
          // navigate to Home page after login state changes from bloc provider.
          if (state.isAuthenticated) {
            sharedPref.setString(SharedPrefHelper.userNameKey, state.username ?? "Rob!");
            sharedPref.setBoolean(SharedPrefHelper.isUserLoggedIn, true);
            context.navigator.navigateTo(HomePageRoute());
          }
        },
        child: BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
          builder: (context, state) {
            return Scaffold(
              body: _buildLoginBody(
                context: context,
                state: state,
                sharedPref: sharedPref,
                onLoginClickEvent: () {
                  context
                      .read<UserAuthenticationBloc>()
                      .add(const OnSubmitLogin());
                },
                onTogglePasswordClick: () {
                  context.read<UserAuthenticationBloc>().add(
                        OnObscurePassword(
                          isObscurePassword: !state.isObscurePassword,
                        ),
                      );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  /// MARK: - Main screen body
  Widget _buildLoginBody({
    required BuildContext context,
    required UserAuthenticationState state,
    required SharedPrefHelper sharedPref,
    required VoidCallback onLoginClickEvent,
    required VoidCallback onTogglePasswordClick,
  }) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Stack(
        children: [
          if (state.isLoading)
            const Center(child: CircularProgressIndicator.adaptive()),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Gap(60),
              _buildHeaderContent(context),
              const Gap(48),
              _buildFormTextFields(context, state, onTogglePasswordClick),
              const Spacer(flex: 1),
              ElevatedLargeButton(
                text: "Login",
                onClick: state.isLoading || !state.isValidForm
                    ? null
                    : onLoginClickEvent,
              ),
              const Gap(32),
            ],
          ),
        ],
      ),
    );
  }

  /// MARK: Header Widget, contains the logo and title.
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

  /// MARK: - TextFields widgets
  Widget _buildFormTextFields(
    BuildContext context,
    UserAuthenticationState state,
    VoidCallback onTogglePasswordClick,
  ) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: "Username",
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            context.read<UserAuthenticationBloc>().add(
                  OnUsernameChange(username: value),
                );
          },
        ),
        const Gap(24),
        TextField(
          obscureText: state.isObscurePassword,
          decoration: InputDecoration(
            labelText: "Password",
            border: const OutlineInputBorder(),
            suffixIcon: GenericIcon(
              icon: state.isObscurePassword
                  ? Icons.lock_outline_rounded
                  : Icons.remove_red_eye,
              color: Theme.of(context).colorScheme.onSurface,
              onTapIcon: onTogglePasswordClick,
            ),
          ),
          onChanged: (value) {
            context.read<UserAuthenticationBloc>().add(
                  OnPasswordChange(password: value),
                );
          },
        ),
      ],
    );
  }
}
