import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/download/download_page.dart';

import '../app_routes.dart';
part 'download_routes.g.dart';

// List<GoRoute> getDownloadRoutes() {
//   return [
//     GoRoute(
//       path: AppRoutes.downloadPagePath,
//       pageBuilder: (context, state) =>
//           const NoTransitionPage(child: DownloadPage()),
//     ),
//     // Add other routes belonging to Download branch
//   ];
// }

List<RouteBase> getDownloadRoutes() => $appRoutes;

@TypedGoRoute<DownloadPageRoute>(
  path: AppRoutes.downloadPagePath,
)
class DownloadPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DownloadPage();
}
