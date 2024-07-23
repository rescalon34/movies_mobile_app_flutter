import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movies_mobile_app_flutter/core/navigation/routes/home_routes.dart';
import 'package:movies_mobile_app_flutter/presentation/components/elevated_large_button.dart';

import '../../components/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String movieName = "Inside Out 2";
    const String releaseDate = "Junio 17, 2024";

    return Scaffold(
      appBar: const CustomAppBar(title: "Home"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Gap(32),
          const Text("Home screen"),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.all(32),
            child: ElevatedLargeButton(
              text: "Go to Details",
              // onClick: () => context.pushNamed(
              //   AppRoutes.movieDetailsPage.name,
              //   queryParameters: {
              //     "movieName": testMovieName,
              //     "releaseDate": releaseDate
              //   },
              // ),
              onClick: () => const MovieDetailsPageRoute(
                movieName: movieName,
                releaseDate: releaseDate,
                $extra: "Movie name with extra",
              ).push(context),
            ),
          )
        ],
      ),
    );
  }
}
