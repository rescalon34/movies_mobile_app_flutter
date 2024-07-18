import 'package:flutter/material.dart';

class ElevatedLargeButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;

  const ElevatedLargeButton({
    super.key,
    this.text = "Done",
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 16,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ));

    return ElevatedButton(
      style: style,
      onPressed: onClick,
      child: Text(text),
    );
  }
}
