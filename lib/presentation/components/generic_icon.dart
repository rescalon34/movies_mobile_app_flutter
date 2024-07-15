import 'package:flutter/material.dart';

class GenericIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final GestureTapCallback? onTapIcon;

  const GenericIcon({
    super.key,
    required this.icon,
    required this.color,
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTapIcon,
        child: Icon(
          icon,
          color: color,
        ));
  }
}
