import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
    TextStyle? style = Theme.of(context).textTheme.labelMedium;
    debugPrint('TextStyle: ${style.toString()}');
    return GestureDetector(
      onTap: onTapItem,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Container(
              color: Theme.of(context).colorScheme.surfaceBright,
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
          const Gap(4),
          Text(
            movie.title ?? "",
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
