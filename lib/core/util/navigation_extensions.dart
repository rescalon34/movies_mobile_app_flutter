import 'package:flutter/cupertino.dart';

import '../navigation/coordinator/app_navigator.dart';

/// Extension on [BuildContext] to provide easy access to the [AppNavigator].
///
/// Example usage:
/// ```
/// context.navigator.pushPage(MovieDetailsPageRoute(movieId: '123'));
/// ```
extension AppNavigatorExtensions on BuildContext {
  AppNavigator get navigator => AppNavigatorImpl(this);
}
