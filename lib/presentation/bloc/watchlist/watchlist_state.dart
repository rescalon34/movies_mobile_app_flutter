import 'package:equatable/equatable.dart';

import '../../../domain/model/movie.dart';

abstract class WatchlistState extends Equatable {
  final List<Movie>? movies;
  final bool? isLoading;
  final String? error;

  const WatchlistState({this.movies, this.isLoading, this.error});

  @override
  List<Object?> get props => [movies, isLoading, error];
}

class OnLoading extends WatchlistState {
  const OnLoading(bool isLoading) : super(isLoading: isLoading);
}

class OnWatchlistFetched extends WatchlistState {
  const OnWatchlistFetched(List<Movie> movies) : super(movies: movies);
}

class OnWatchlistError extends WatchlistState {
  const OnWatchlistError(String error) : super(error: error);
}
