import 'package:dio/dio.dart';
import 'package:movies_mobile_app_flutter/data/model/watchlist_data_response.dart';
import 'package:movies_mobile_app_flutter/data/util/network_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'network_service.g.dart';

@RestApi(baseUrl: Constants.baseURL)
abstract class NetworkService {
  factory NetworkService(Dio dio) = _NetworkService;

  @GET('/account/{account_id}/watchlist/movies')
  Future<HttpResponse<WatchlistDataResponse>> getWatchlistMovies({
    @Header('Authorization') required String accessToken,
    @Query("account_id") int? accountId,
  });
}
