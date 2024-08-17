import 'package:flutter/cupertino.dart';

import '../di/di_main_module.dart';
import '../navigation/app_navigator/app_navigator.dart';

/// Extension on [BuildContext] to provide easy access to the [AppNavigator].
///
/// Example usage:
/// ```
/// context.navigator.pushPage(MovieDetailsPageRoute(movieId: '123'));
/// ```
extension AppNavigatorExtensions on BuildContext {
  AppNavigator get navigator => getIt(param1: this);
}
