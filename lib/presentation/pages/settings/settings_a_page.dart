import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/app_route_paths.dart';
import '../generic/generic_page.dart';

class SettingsAPage extends StatelessWidget {
  const SettingsAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericPage(
      screenTitle: "Settings A",
      onButtonClick: () => context.push(AppRoutePaths.settingsBPagePath),
    );
  }
}
