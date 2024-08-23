import 'package:flutter/material.dart';

import '../../components/coming_soon_view.dart';
import '../../components/custom_appbar.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Download",
      ),
      body: ComingSoonView(),
    );
  }
}
