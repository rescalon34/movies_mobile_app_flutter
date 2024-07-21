import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/app_routes.dart';
import '../generic/generic_page.dart';

class SettingsBPage extends StatelessWidget {
  const SettingsBPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericPage(
      screenTitle: "Settings B",
      onButtonClick: () => context.pushNamed(AppRoutes.settingsCPage),
    );
  }
}
