import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movies_mobile_app_flutter/core/extension/app_core_extensions.dart';
import 'package:movies_mobile_app_flutter/core/extension/date_util_extensions.dart';
import 'package:movies_mobile_app_flutter/domain/model/movie.dart';
import 'package:movies_mobile_app_flutter/presentation/components/elevated_large_button.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/movie_detail/movie_details_args.dart';

import '../../components/custom_appbar.dart';
import '../../components/generic_icon.dart';

class MovieDetailsPage extends StatelessWidget {
  final String? releaseDate;
  final MovieDetailsArgs? args;

  const MovieDetailsPage({
    super.key,
    this.releaseDate,
    this.args,
  });

  /// MARK: - Main Build widget
  @override
  Widget build(BuildContext context) {
    final movie = args?.movie ?? const Movie();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildDetailsAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(movie, context),
            buildHeaderOverview(movie, context),
          ],
        ),
      ),
    );
  }

  /// MARK: - Movie Details AppBar
  CustomAppBar buildDetailsAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColor: Colors.transparent,
      actions: [
        GenericIcon(
          icon: Icons.cast,
          color: Colors.white,
          onTapIcon: () => showDialogAlert(context),
        ),
        GenericIcon(
          icon: Icons.adaptive.share,
          color: Colors.white,
          onTapIcon: () => showDialogAlert(context),
        ),
      ],
    );
  }

  /// MARK: - Movie details header (Image and Title).
  Widget buildHeader(Movie movie, BuildContext context) {
    return Column(
      children: [
        movie.imageUrl != null
            ? Image.network(
                args?.movie?.imageUrl ?? "",
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              )
            : const Text("No movie"),
        const Gap(12),
        Text(
          movie.title?.toUpperCase() ?? "",
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  /// MARK: - Movie details Overview (Date, Play button, overview).
  Widget buildHeaderOverview(Movie movie, BuildContext context) {
    return Column(
      children: [
        const Gap(4),
        Text(
          movie.releaseDate?.parseDateToMonthYear(),
          style: Theme.of(context).textTheme.labelSmall,
        ),
        const Gap(4),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: ElevatedLargeButton(
            onClick: () => showDialogAlert(context),
            text: "Play".toUpperCase(),
            leadingIcon: Icons.play_arrow_rounded,
            style: _getPlayButtonStyle(context),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(movie.overview ?? ""),
        ),
      ],
    );
  }

  /// MARK: View functions
  ButtonStyle _getPlayButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 16,
        ),
        backgroundColor: Theme.of(context).colorScheme.secondaryFixed,
        foregroundColor: Theme.of(context).colorScheme.onSecondaryFixed,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ));
  }

  /// MARK: - Generic dialog alert
  void showDialogAlert(BuildContext context) {
    context.showCustomAdaptiveDialog(
      title: "Coming Soon",
      description:
          "This feature is under construction, it will be available soon!",
      positiveButtonText: "Ok",
      positiveAction: () => Navigator.pop(context),
    );
  }
}
