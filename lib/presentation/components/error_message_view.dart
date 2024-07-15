import 'package:flutter/material.dart';

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
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildErrorContainer(),
        ],
      ),
    );
  }

  Widget _buildErrorContainer() {
    return Container(
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Icon(
              Icons.error_outline_sharp,
              color: Colors.red,
              size: 60,
            ),
            const SizedBox(height: 8),
            const Text(
              "Ops! an error has occurred",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text("Please try again"),
            const SizedBox(height: 36),
            SizedBox(
              width: double.infinity,
              child: _buildRetryButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRetryButton() {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontSize: 16,
      ),
      backgroundColor: Colors.deepPurpleAccent,
      foregroundColor: Colors.white,
    );

    return ElevatedButton(
      style: style,
      onPressed: onRetry,
      child: const Text('Retry'),
    );
  }
}
