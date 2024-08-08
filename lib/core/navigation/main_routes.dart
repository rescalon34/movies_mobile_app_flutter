import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/branches/download_branch.dart';
import 'package:movies_mobile_app_flutter/core/navigation/branches/home_branch.dart';
import 'package:movies_mobile_app_flutter/core/navigation/branches/profile_branch.dart';
import 'package:movies_mobile_app_flutter/core/navigation/branches/search_branch.dart';
import 'package:movies_mobile_app_flutter/core/navigation/branches/watchlist_branch.dart';
import 'package:movies_mobile_app_flutter/core/navigation/redirect/auth_redirector.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/general_routes/general_routes.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/login/authentication_routes.dart';
import 'package:movies_mobile_app_flutter/core/util/bloc_stream_to_listenable.dart';

import '../../presentation/bloc/user_authentication/user_authentication_bloc.dart';
import '../../presentation/main/bottom_navigation/main_scaffold_with_nav_bar.dart';
import 'app_route_paths.dart';

class MainRoutes {
  final UserAuthenticationBloc _authBloc;
  final StreamToListenable _streamToListenable;
  final AuthRedirector _authRedirector;
  final GlobalKey<NavigatorState> _rootNavigatorKey;

  MainRoutes(
    this._authBloc,
    this._streamToListenable,
    this._authRedirector,
  ) : _rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter get mainGoRouter {
    return GoRouter(
      initialLocation: AppRoutePaths.splashPagePath,
      navigatorKey: _rootNavigatorKey,
      routes: [
        ...getAllRoutes(),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            // Return the main scaffold container page.
            return MainScaffoldWithNavBar(navigationShell: navigationShell);
          },
          branches: [
            getHomeBranch(),
            getSearchBranch(),
            getWatchlistBranch(),
            getDownloadBranch(),
            getProfileBranch()
          ],
        ),
      ],
      refreshListenable: _streamToListenable.addStream([_authBloc.stream]),
      redirect: _authRedirector.authRedirectorHandler,
    );
  }

  /// Add here all route list which don't belong to a specific branch.
  /// Using the 'spread' operator to combine multiple collections into a single list.
  /// Since getAuthenticationRoutes() is a list, the handy '...' 'spread operator'
  /// helps to merge the list.
  List<RouteBase> getAllRoutes() {
    return [
      ...getAuthenticationRoutes(),
      ...getGeneralRoutes(),
    ];
  }
}
