import 'package:movies_mobile_app_flutter/core/util/usecase.dart';
import 'package:movies_mobile_app_flutter/data/util/data_state.dart';
import 'package:movies_mobile_app_flutter/domain/model/movie.dart';

import '../repository/watchlist_repository.dart';

class GetWatchlistUseCase implements UseCase<DataState<List<Movie>>, void> {

   final WatchlistRepository _watchlistRepository;

  GetWatchlistUseCase(this._watchlistRepository);

  @override
  Future<DataState<List<Movie>>> call({void params}) {
    return _watchlistRepository.getWatchlistMovies();
  }
}
