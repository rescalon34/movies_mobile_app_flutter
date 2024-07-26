import 'package:flutter/cupertino.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

import '../../../core/navigation/routes/profile_routes.dart';
import '../generic/generic_page.dart';

class SettingsAPage extends StatelessWidget {
  const SettingsAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericPage(
      screenTitle: "Settings A",
      onButtonClick: () => context.navigator.pushPage(SettingsBPageRoute()),
    );
  }
}
