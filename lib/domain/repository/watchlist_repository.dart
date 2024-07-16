import 'package:movies_mobile_app_flutter/data/util/data_state.dart';

import '../model/movie.dart';

abstract class WatchlistRepository {

  Future<DataState<List<Movie>>> getWatchlistMovies();
}
