import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

import '../../../core/navigation/app_routes.dart';
import '../generic/generic_page.dart';

class SettingsAPage extends StatelessWidget {
  const SettingsAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericPage(
      screenTitle: "Settings A",
      onButtonClick: () => context.push(AppRoutes.settingsBPage.path),
    );
  }
}
