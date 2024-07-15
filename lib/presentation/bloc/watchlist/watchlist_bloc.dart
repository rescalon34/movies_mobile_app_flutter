import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_mobile_app_flutter/data/util/data_state.dart';
import 'package:movies_mobile_app_flutter/domain/model/movie.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/watchlist/watchlist_event.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/watchlist/watchlist_state.dart';

import '../../../domain/usecase/get_watchlist_use_case.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  final GetWatchlistUseCase _getWatchlistUseCase;

  WatchlistBloc(
    this._getWatchlistUseCase,
  ) : super(const OnLoading(true)) {
    on<GetWatchlist>(onGetWatchlist);
  }

  void onGetWatchlist(
    GetWatchlist getWatchlist,
    Emitter<WatchlistState> emit,
  ) async {
    final dataState = await _getWatchlistUseCase();

    if (dataState is DataSuccess) {
      debugPrint("DataSuccess data: ${dataState.data}");
      emit(OnWatchlistFetched(dataState.data ?? <Movie>[]));
    }

    if (dataState is DataFailure) {
      debugPrint("DataSuccess error: ${dataState.error}");
      emit(OnWatchlistError(dataState.error.toString()));
    }
  }
}
