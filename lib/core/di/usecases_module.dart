import 'package:get_it/get_it.dart';
import 'package:movies_mobile_app_flutter/domain/usecase/login_use_case.dart';

import '../../domain/usecase/get_watchlist_use_case.dart';

Future<void> setupUseCasesModule(GetIt getIt) async {
  getIt.registerSingleton<GetWatchlistUseCase>(GetWatchlistUseCase(getIt()));
  getIt.registerSingleton<LoginUseCase>(LoginUseCase(getIt()));
}
