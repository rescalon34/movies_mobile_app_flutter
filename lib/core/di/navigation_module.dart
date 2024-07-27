import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../navigation/app_navigator/app_navigator.dart';

Future<void> setupNavigationModule(GetIt getIt) async {
  getIt.registerFactoryParam<AppNavigator, BuildContext, void>(
    (context, _) => AppNavigatorImpl(context),
  );
}
