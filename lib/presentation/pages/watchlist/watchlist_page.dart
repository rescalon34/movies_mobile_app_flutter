import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/watchlist/watchlist_bloc.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/watchlist/watchlist_event.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/watchlist/watchlist_state.dart';
import 'package:movies_mobile_app_flutter/presentation/components/custom_appbar.dart';
import 'package:movies_mobile_app_flutter/presentation/components/error_message_view.dart';
import 'package:movies_mobile_app_flutter/presentation/pages/movie_detail/movie_details_args.dart';

import '../../../core/di/service_locator.dart';
import '../../../core/navigation/routes/home_routes.dart';
import '../../../domain/model/movie.dart';
import '../../components/generic_icon.dart';
import '../../components/movie_item.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WatchlistBloc>(
      create: (context) => sl()..add(const GetWatchlist()),
      child: Scaffold(
        appBar: _buildWatchlistAppBar(context),
        body: BlocBuilder<WatchlistBloc, WatchlistState>(
          builder: (context, state) {
            if (state is OnWatchlistError) {
              return ErrorMessageView(
                onRetry: () {
                  context.read<WatchlistBloc>().add(const GetWatchlist());
                },
              );
            }
            return _buildWatchlistBody(context, state);
          },
        ),
      ),
    );
  }

  CustomAppBar _buildWatchlistAppBar(BuildContext context) {
    return CustomAppBar(
      title: "Watchlist",
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              GenericIcon(
                icon: Icons.cast,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                onTapIcon: () {
                  debugPrint("tapping on cast icon");
                },
              ),
              GenericIcon(
                icon: Icons.adaptive.share,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                onTapIcon: () {
                  debugPrint("tapping on share icon");
                },
              ),
            ],
          ),
        )
      ],
    );
  }

  /// Watchlist body content
  Widget _buildWatchlistBody(
    BuildContext context,
    WatchlistState state,
  ) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildMoviesStoriesSection(context, state.movies ?? []),
              _buildWatchlistSection(context, state.movies ?? []),
            ],
          ),
        ),
        if (state.isLoading == true)
          const Center(child: CircularProgressIndicator.adaptive())
      ],
    );
  }

  /// Movies Stories content
  Widget _buildMoviesStoriesSection(
    BuildContext context,
    List<Movie> movies,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
          child: Text(
            "Stories",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: movies.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 6, right: 6),
                child: CircleAvatar(
                  radius: 40,
                  child: ClipOval(
                    child: Image.network(
                      movies[index].imageUrl ?? "",
                      fit: BoxFit.cover,
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  /// Watchlist content
  Widget _buildWatchlistSection(BuildContext context, List<Movie> movies) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Text(
              "My movies",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 2 / 3.1,
            ),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return MovieItem(
                movie: movies[index],
                onTapItem: () => _onNavigateToDetails(
                  context,
                  movies[index],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void _onNavigateToDetails(BuildContext context, Movie movie) {
    context.navigator.pushPage(
      MovieDetailsPageRoute(
        releaseDate: "July 22",
        $extra: MovieDetailsArgs(
          movie: movie,
          movie2: movie,
        ),
      ),
    );
  }
}
