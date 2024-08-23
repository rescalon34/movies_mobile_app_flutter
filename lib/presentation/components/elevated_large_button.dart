import 'package:flutter/material.dart';

class ElevatedLargeButton extends StatelessWidget {
  final String text;
  final IconData? leadingIcon;
  final ButtonStyle? style;
  final VoidCallback? onClick;

  const ElevatedLargeButton({
    super.key,
    this.text = "Done",
    this.leadingIcon,
    this.style,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: style ?? _getDefaultButtonStyle(context),
        onPressed: onClick,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(leadingIcon),
            Text(text),
          ],
        ),
      ),
    );
  }

  /// MARK: - View functions
  ButtonStyle _getDefaultButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 16,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ));
  }
}
