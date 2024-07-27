import '../../../domain/model/movie.dart';

class MovieDetailsArgs {
  final Movie? movie;
  final Movie? movie2;

  const MovieDetailsArgs({
    this.movie,
    this.movie2,
  });
}
