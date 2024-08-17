import 'package:get_it/get_it.dart';
import 'package:movies_mobile_app_flutter/data/repository/auth_repository_impl.dart';
import 'package:movies_mobile_app_flutter/domain/repository/auth_repository.dart';

import '../../data/repository/watchlist_repository_impl.dart';
import '../../domain/repository/watchlist_repository.dart';

Future<void> setupRepositoryModule(GetIt getIt) async {
  getIt.registerSingleton<WatchlistRepository>(
    WatchlistRepositoryImpl(getIt()),
  );

  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(),
  );
}
