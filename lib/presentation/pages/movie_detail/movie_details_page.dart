import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/app_routes.dart';
import '../../components/custom_appbar.dart';
import '../../components/elevated_large_button.dart';

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
          Center(
              child: Column(
            children: [
              Text("movieName: $movieName"),
              Text("releaseDate: $releaseDate"),
              Padding(
                padding: const EdgeInsets.all(32),
                child: ElevatedLargeButton(
                  text: "Go to settings",
                  onClick: () => context.pushNamed(AppRoutes.settingsBPage),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
