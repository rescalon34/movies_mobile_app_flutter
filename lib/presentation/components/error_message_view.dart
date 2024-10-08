import 'package:flutter/material.dart';
import 'package:movies_mobile_app_flutter/presentation/components/elevated_large_button.dart';

class ErrorMessageView extends StatelessWidget {
  final VoidCallback onRetry;

  const ErrorMessageView({
    super.key,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildErrorContainer(context),
        ],
      ),
    );
  }

  Widget _buildErrorContainer(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Icon(
              Icons.error_outline_sharp,
              color: Theme.of(context).colorScheme.error,
              size: 60,
            ),
            const SizedBox(height: 8),
            Text(
              "Ops! an error has occurred",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Please try again",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 36),
            SizedBox(
              width: double.infinity,
              child: ElevatedLargeButton(
                text: "Retry",
                onClick: onRetry,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
