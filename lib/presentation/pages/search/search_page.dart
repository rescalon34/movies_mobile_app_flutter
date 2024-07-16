import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Search",
      ),
      body: Center(
        child: Text("Search"),
      ),
    );
  }
}
