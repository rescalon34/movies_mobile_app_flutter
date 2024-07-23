/// Extension methods to handle navigation-related operations for page names.
extension NavigationExtensions on String? {
  /// Converts the page name to a path.
  ///
  /// This extension property takes a page name and prefixes it with a `/`,
  /// converting it to a route path format. If the page name is `null`, it returns
  /// an empty string.
  ///
  /// Example:
  /// ```
  /// static const homePage = "home-page";
  /// homePage.path => "/home-page"
  /// ```
  String get path => this != null ? "/$this" : '';

  /// Retrieves the name of the page.
  ///
  /// This extension property returns the original page name if it's not `null`.
  /// If the page name is `null`, it returns an empty string.
  ///
  /// Example:
  /// ```
  /// static const homePage = "home-page";
  /// homePage.name => "home-page"
  /// ```
  String get name => this?.replaceAll("/", "") ?? '';
}
