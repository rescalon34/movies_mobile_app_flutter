import 'package:get_it/get_it.dart';

import '../../presentation/bloc/watchlist/watchlist_bloc.dart';

Future<void> setupBlocModule(GetIt getIt) async {
  getIt.registerFactory<WatchlistBloc>(() => WatchlistBloc(getIt()));
}
