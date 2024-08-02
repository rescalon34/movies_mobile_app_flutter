import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/util/base_go_route_data.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/download/download_page.dart';

import '../../app_route_paths.dart';

part 'download_routes.g.dart';

List<RouteBase> getDownloadRoutes() => $appRoutes;

@TypedGoRoute<DownloadPageRoute>(
  path: AppRoutePaths.downloadPagePath,
)
class DownloadPageRoute extends BaseGoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DownloadPage();

  @override
  String get location => AppRoutePaths.downloadPagePath;
}
