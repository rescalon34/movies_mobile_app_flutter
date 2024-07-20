import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';

class MovieDetailsPage extends StatelessWidget {
  final String? movieName;
  final String? releaseDate;

  const MovieDetailsPage({
    super.key,
    this.movieName,
    this.releaseDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Movie Details"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(child: Column(
            children: [
              Text("movieName: $movieName"),
              Text("releaseDate: $releaseDate"),
            ],
          )),
        ],
      ),
    );
  }
}
