import '../../domain/model/movie.dart';
import '../util/string_extensions.dart';

class MovieResponse {
  final int id;
  final String? title;
  final String? imageUrl;

  const MovieResponse({
    required this.id,
    this.title,
    this.imageUrl,
  });

  factory MovieResponse.fromJson(Map<String, dynamic> map) {
    return MovieResponse(
      id: map['id'],
      title: map['title'] ?? "",
      imageUrl: map['poster_path'] ?? "",
    );
  }

  Movie toDomain() {
    return Movie(
      id: id,
      title: title,
      imageUrl: imageUrl.getPosterUrl(),
    );
  }
}
