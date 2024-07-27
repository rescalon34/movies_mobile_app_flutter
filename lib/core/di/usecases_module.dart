import 'package:get_it/get_it.dart';

import '../../domain/usecase/get_watchlist_use_case.dart';

Future<void> setupUseCasesModule(GetIt getIt) async {
  getIt.registerSingleton<GetWatchlistUseCase>(GetWatchlistUseCase(getIt()));
}
