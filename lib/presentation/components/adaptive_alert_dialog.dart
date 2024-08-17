import 'package:flutter/material.dart';

class AdaptiveAlertDialog extends StatelessWidget {
  final String title;
  final String? description;
  final String? cancelButtonText;
  final String positiveButtonText;
  final VoidCallback? cancelAction;
  final VoidCallback positiveAction;

  const AdaptiveAlertDialog(
      {super.key,
      required this.title,
      this.description,
      this.cancelButtonText,
      this.positiveButtonText = "Ok",
      this.cancelAction,
      required this.positiveAction});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      content: description != null ? Text(description ?? "") : null,
      actions: [
        if (cancelButtonText?.isNotEmpty == true)
          TextButton(
            onPressed: cancelAction ?? () => Navigator.pop(context), // dismiss dialog.
            child: Text(cancelButtonText ?? "Cancel"),
          ),
        TextButton(
          onPressed: positiveAction,
          child: Text(positiveButtonText),
        )
      ],
    );
  }
}
