import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../components/elevated_large_button.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BAES SDK POC")),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              "Tap on any of the buttons below to navigate to the SDK implementation",
            ),
            const Gap(32),
            ElevatedLargeButton(
              text: "CredoLab SDK",
              onClick: () {},
            ),
            ElevatedLargeButton(
              text: "Facephi SDK",
              onClick: () {},
            ),
            ElevatedLargeButton(
              text: "Twilio",
              onClick: () {},
            ),
            ElevatedLargeButton(
              text: "Dynatrace",
              onClick: () {},
            ),
            ElevatedLargeButton(
              text: "Singular",
              onClick: () {},
            ),
            ElevatedLargeButton(
              text: "Amplitude",
              onClick: () {},
            ),
            ElevatedLargeButton(
              text: "Facebook SDK",
              onClick: () {},
            ),
            ElevatedLargeButton(
              text: "Firebase",
              onClick: () {},
            ),
          ],
        ),
      ),
    );
  }
}
