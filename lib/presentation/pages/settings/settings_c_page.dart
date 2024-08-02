import 'package:flutter/cupertino.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/profile/profile_routes.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';

import '../generic/generic_page.dart';

class SettingsCPage extends StatelessWidget {
  const SettingsCPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericPage(
      screenTitle: "Settings C",
      onButtonClick: () => context.navigator.pushPage(SettingsDPageRoute()),
    );
  }
}
