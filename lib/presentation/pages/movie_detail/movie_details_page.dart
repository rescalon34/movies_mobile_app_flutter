import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/profile_routes.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/movie_detail/movie_details_args.dart';

import '../../../core/navigation/app_route_paths.dart';
import '../../components/custom_appbar.dart';
import '../../components/elevated_large_button.dart';

class MovieDetailsPage extends StatelessWidget {
  final String? releaseDate;
  final MovieDetailsArgs? args;

  const MovieDetailsPage({
    super.key,
    this.releaseDate,
    this.args,
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
              args?.movie2?.imageUrl != null
                  ? Image.network(
                args?.movie2?.imageUrl ?? "",
                      width: double.infinity,
                      height: 350,
                    )
                  : Text("no movie"),
              Text("movieName: ${args?.movie2?.title.toString()}"),
              Text("releaseDate: $releaseDate"),
              Text(args?.movie2?.toString() ?? "No args"),
              Padding(
                padding: const EdgeInsets.all(32),
                child: ElevatedLargeButton(
                  text: "Go to settings",
                  onClick: () => context.navigator.pushPage(SettingsBPageRoute()),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
