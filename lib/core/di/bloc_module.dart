import 'package:get_it/get_it.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/user_authentication/user_authentication_bloc.dart';

import '../../presentation/bloc/watchlist/watchlist_bloc.dart';

Future<void> setupBlocModule(GetIt getIt) async {
  getIt.registerFactory<WatchlistBloc>(() => WatchlistBloc(getIt()));
  getIt.registerFactory<UserAuthenticationBloc>(() => UserAuthenticationBloc(getIt()));
}
