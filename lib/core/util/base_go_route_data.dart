import 'package:go_router/go_router.dart';

/// Base class for defining route data with a navigation path.
///
/// Classes that represent PageRoutes should extend from this class to provide the
/// `location` property. This allows the Navigator class to determine the
/// appropriate navigation path for a given screen or page.
///
/// The `location` property represents the route's navigation path, which is
/// used by the navigator to push or go to the specified route.
///
/// Example usage:
/// ```
/// class MovieDetailsPageRoute extends BaseGoRouteData {
///   final String movieId;
///
///   MovieDetailsPageRoute(this.movieId);
///
///   @override
///   String get location => AppRoutePaths.movieDetailsPagePath;
/// }
/// ```
abstract class BaseGoRouteData extends GoRouteData {
  String get location;
}
