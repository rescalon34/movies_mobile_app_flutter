import 'package:flutter/cupertino.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/profile/profile_routes.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

import '../generic/generic_page.dart';

class SettingsBPage extends StatelessWidget {
  const SettingsBPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericPage(
      screenTitle: "Settings B",
      onButtonClick: () => context.navigator.pushPage(SettingsCPageRoute()),
    );
  }
}
