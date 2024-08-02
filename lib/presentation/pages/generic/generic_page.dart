import 'package:flutter/material.dart';
import 'package:movies_mobile_app_flutter/presentation/components/custom_appbar.dart';

import '../../components/elevated_large_button.dart';

class GenericPage extends StatelessWidget {
  final String? screenTitle;
  final VoidCallback? onButtonClick;

  const GenericPage({
    super.key,
    this.screenTitle,
    this.onButtonClick,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: screenTitle ?? "Generic",
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(child: Text(screenTitle ?? "Generic")),
          if (onButtonClick != null)
            Padding(
              padding: const EdgeInsets.all(32),
              child: ElevatedLargeButton(
                text: "Next",
                onClick: onButtonClick!,
              ),
            ),
        ],
      ),
    );
  }
}
