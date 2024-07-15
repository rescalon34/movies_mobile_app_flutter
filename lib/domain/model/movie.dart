import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int? id;
  final String? title;
  final String? imageUrl;

  const Movie({
    this.id,
    this.title,
    this.imageUrl,
  });

  @override
  List<Object?> get props {
    return [
      id,
      title,
      imageUrl,
    ];
  }
}
