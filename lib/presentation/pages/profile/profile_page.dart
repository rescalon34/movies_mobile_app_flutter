import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/profile_routes.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

import '../../bloc/user_authentication/user_authentication_bloc.dart';
import '../../components/custom_appbar.dart';
import '../../components/elevated_large_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Profile",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Profile"),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: ElevatedLargeButton(
                text: "Go to Settings",
                onClick: () => context.navigator.pushPage(SettingsAPageRoute()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: ElevatedLargeButton(
                text: "Logout",
                onClick: () {
                  context.read<UserAuthenticationBloc>().add(const LoggedOut());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
