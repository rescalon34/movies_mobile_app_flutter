import 'package:flutter/material.dart';

class CircleGradientAvatar extends StatelessWidget {
  final String imageUrl;
  final double imageSize;

  const CircleGradientAvatar({
    super.key,
    required this.imageUrl,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            width: (imageSize * 2) + 6,
            height: (imageSize * 2) + 6,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.indigo,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ))),
        CircleAvatar(
          radius: imageSize,
          child: ClipOval(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: imageSize * 2,
              height: imageSize * 2,
            ),
          ),
        ),
      ],
    );
  }
}
