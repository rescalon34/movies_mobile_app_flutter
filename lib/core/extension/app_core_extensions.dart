import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
}
