import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Profile",
      ),
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
}
