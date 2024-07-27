import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../navigation/coordinator/app_navigator.dart';

Future<void> setupNavigationModule(GetIt getIt) async {
  getIt.registerFactoryParam<AppNavigator, BuildContext, void>(
    (context, _) => AppNavigatorImpl(context),
  );
}
