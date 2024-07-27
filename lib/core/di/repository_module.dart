import 'package:get_it/get_it.dart';

import '../../data/repository/watchlist_repository_impl.dart';
import '../../domain/repository/watchlist_repository.dart';

Future<void> setupRepositoryModule(GetIt getIt) async {
  getIt.registerSingleton<WatchlistRepository>(
    WatchlistRepositoryImpl(getIt()),
  );
}
