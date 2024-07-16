import 'package:flutter/material.dart';

import '../../domain/model/movie.dart';

/// Movie item
class MovieItem extends StatelessWidget {
  const MovieItem({
    super.key,
    required this.movie,
    required this.onTapItem,
  });

  final Movie movie;
  final GestureTapCallback onTapItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapItem,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Container(
              color: Colors.grey,
              height: 260,
              child: movie.imageUrl != null
                  ? Image.network(
                      movie.imageUrl ?? "",
                      fit: BoxFit.cover,
                      errorBuilder: (
                        BuildContext context,
                        Object exception,
                        StackTrace? stackTrace,
                      ) {
                        return const Center(
                          child: Icon(Icons.error),
                        );
                      },
                    )
                  : const Center(
                      child: Text("No image available"),
                    ),
            ),
          ),
          Text(
            movie.title ?? "",
            style: const TextStyle(
              color: Colors.black,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
