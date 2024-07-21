import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/app_routes.dart';
import '../generic/generic_page.dart';

class SettingsDPage extends StatelessWidget {
  const SettingsDPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericPage(
      screenTitle: "Settings D",
      onButtonClick: () => context.go(AppRoutes.profilePagePath),
    );
  }
}
