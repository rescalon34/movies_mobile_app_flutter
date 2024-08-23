import '../../domain/model/movie.dart';
import '../util/string_extensions.dart';

class MovieResponse {
  final int id;
  final String? title;
  final String? overview;
  final String? releaseDate;
  final String? imageUrl;

  const MovieResponse({
    required this.id,
    this.title,
    this.overview,
    this.releaseDate,
    this.imageUrl,
  });

  factory MovieResponse.fromJson(Map<String, dynamic> map) {
    return MovieResponse(
      id: map['id'],
      title: map['title'] ?? "",
      overview: map['overview'] ?? "",
      releaseDate: map['release_date'] ?? "",
      imageUrl: map['poster_path'] ?? "",
    );
  }

  Movie toDomain() {
    return Movie(
      id: id,
      title: title,
      overview: overview,
      releaseDate: releaseDate,
      imageUrl: imageUrl.getPosterUrl(),
    );
  }
}
