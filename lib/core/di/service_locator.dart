import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_mobile_app_flutter/core/navigation/coordinator/app_navigator.dart';
import 'package:movies_mobile_app_flutter/data/networking/network_service.dart';
import 'package:movies_mobile_app_flutter/data/repository/watchlist_repository_impl.dart';
import 'package:movies_mobile_app_flutter/domain/repository/watchlist_repository.dart';
import 'package:movies_mobile_app_flutter/domain/usecase/get_watchlist_use_case.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/watchlist/watchlist_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  // Network service
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<NetworkService>(NetworkService(sl()));

  // Repositories
  sl.registerSingleton<WatchlistRepository>(WatchlistRepositoryImpl(sl()));

  // UseCases
  sl.registerSingleton<GetWatchlistUseCase>(GetWatchlistUseCase(sl()));

  // Bloc
  sl.registerFactory<WatchlistBloc>(() => WatchlistBloc(sl()));

  // Navigation
  sl.registerFactoryParam<AppNavigator, BuildContext, void>(
    (context, _) => AppNavigatorImpl(context),
  );
}
