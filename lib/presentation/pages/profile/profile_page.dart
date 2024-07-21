import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/app_routes.dart';
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
                  onClick: () => context.push(AppRoutes.settingsAPagePath)),
            )
          ],
        ),
      ),
    );
  }
}
