import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../util/base_go_route_data.dart';

/// Abstract class for navigating between pages in the application.
///
/// The generic type [T] must extend [BaseGoRouteData] to ensure that the route
/// data includes a `location` property for navigation.
///
abstract class AppNavigator {
  /// Pushes a new page onto the navigation stack.
  ///
  /// The [routeData] parameter must provide the location and any extra data
  /// needed for the navigation.
  ///
  /// Example usage:
  /// ```
  /// context.navigator.pushPage(MovieDetailsPageRoute(movieId: '123', $extra: args()));
  /// ```
  void pushPage<T extends BaseGoRouteData>(T routeData);

  String redirectTo<T extends BaseGoRouteData>(T routeData);

  void navigateTo<T extends BaseGoRouteData>(T routeData);
}

class AppNavigatorImpl implements AppNavigator {
  final BuildContext context;

  const AppNavigatorImpl(this.context);

  @override
  void pushPage<T extends BaseGoRouteData>(T routeData) {
    context.push(routeData.location, extra: routeData);
  }

  @override
  String redirectTo<T extends BaseGoRouteData>(T routeData) {
    return routeData.location;
  }

  @override
  void navigateTo<T extends BaseGoRouteData>(T routeData) {
    context.go(routeData.location);
  }
}
