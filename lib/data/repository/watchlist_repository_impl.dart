import 'dart:io';

import 'package:dio/dio.dart';
import 'package:movies_mobile_app_flutter/data/networking/network_service.dart';
import 'package:movies_mobile_app_flutter/data/util/data_state.dart';
import 'package:movies_mobile_app_flutter/domain/model/movie.dart';
import 'package:movies_mobile_app_flutter/domain/repository/watchlist_repository.dart';

import '../util/network_constants.dart';

class WatchlistRepositoryImpl implements WatchlistRepository {
  final NetworkService _networkService;

  WatchlistRepositoryImpl(this._networkService);

  @override
  Future<DataState<List<Movie>>> getWatchlistMovies() async {
    try {
      final response = await _networkService.getWatchlistMovies(
        accessToken: "Bearer ${Constants.accessToken}",
        accountId: Constants.accountId,
      );

      if (response.response.statusCode == HttpStatus.ok) {
        final movies = response.data.movies?.map((movieResponse) {
          return movieResponse.toDomain();
        }).toList();

        return DataSuccess(movies ?? []);
      } else {
        return DataFailure(
          DioException(
              error: response.response.statusMessage,
              response: response.response,
              type: DioExceptionType.badResponse,
              requestOptions: response.response.requestOptions),
        );
      }
    } on DioException catch (e) {
      return DataFailure(e);
    }
  }
}
