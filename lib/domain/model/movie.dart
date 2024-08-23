import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int? id;
  final String? title;
  final String? overview;
  final String? releaseDate;
  final String? imageUrl;

  const Movie({
    this.id,
    this.title,
    this.overview,
    this.releaseDate,
    this.imageUrl,
  });

  @override
  List<Object?> get props {
    return [
      id,
      title,
      overview,
      releaseDate,
      imageUrl,
    ];
  }
}
