import 'movie_response.dart';

class WatchlistDataResponse {
  final List<MovieResponse>? movies;

  WatchlistDataResponse({
    this.movies,
  });

  factory WatchlistDataResponse.fromJson(Map<String, dynamic> map) {
    return WatchlistDataResponse(
      movies: (map['results'] as List<dynamic>)
          .map((item) => MovieResponse.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}
