import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const RoundedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 16,
        ),
        backgroundColor: Theme.of(context).colorScheme.secondaryFixed,
        foregroundColor: Theme.of(context).colorScheme.onSecondaryFixed);

    return SizedBox(
      child: ElevatedButton(
        style: style,
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
