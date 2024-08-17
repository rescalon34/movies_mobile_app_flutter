import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../presentation/components/adaptive_alert_dialog.dart';

/// Extension functions to reuse UI logic across the app.
extension AppCoreExtensions on BuildContext {
  /// Change statusBar color, fallback to default primaryContainer color.
  void setStatusBarColor({Color? color}) {
    Color defaultColor = Theme.of(this).colorScheme.surfaceContainer;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color ?? defaultColor,
      ),
    );
  }

  /// Displays a custom adaptive dialog with a title, cancel button, and a positive action.
  ///
  /// This function wraps the `showDialog` function to simplify the process of displaying
  /// an adaptive dialog. The dialog is constructed using `AdaptiveAlertDialog`, which
  /// adjusts its appearance according to the platform (Material3 on Android, Cupertino on iOS).
  ///
  /// - Parameters:
  ///   - title: The title of the dialog.
  ///   - cancelButtonText: The title of the cancel action.
  ///   - cancelButtonText: The title of the cancel action.
  ///   - cancelAction: The callback function triggered when the negative action button is pressed.
  ///   - positiveAction: The callback function triggered when the positive action button is pressed.
  void showCustomAdaptiveDialog({
    required String title,
    String? description,
    bool? isCancellable = true,
    String? cancelButtonText,
    required String positiveButtonText,
    VoidCallback? cancelAction,
    required VoidCallback positiveAction,
  }) {
    showAdaptiveDialog(
      context: this,
      useRootNavigator: false,
      barrierDismissible: isCancellable,
      builder: (context) => AdaptiveAlertDialog(
        title: title,
        description: description,
        cancelButtonText: cancelButtonText,
        positiveButtonText: positiveButtonText,
        cancelAction: cancelAction,
        positiveAction: positiveAction,
      ),
    );
  }
}
