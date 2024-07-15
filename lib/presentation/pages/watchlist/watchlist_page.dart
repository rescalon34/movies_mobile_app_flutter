import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/watchlist/watchlist_bloc.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/watchlist/watchlist_event.dart';
import 'package:movies_mobile_app_flutter/presentation/bloc/watchlist/watchlist_state.dart';
import 'package:movies_mobile_app_flutter/presentation/components/error_message_view.dart';

import '../../../core/di/service_locator.dart';
import '../../../domain/model/movie.dart';
import '../../components/movie_item.dart';
import 'watchlist_appbar.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WatchlistBloc>(
      create: (context) => sl()..add(const GetWatchlist()),
      child: Scaffold(
        appBar: const WatchlistAppBar(),
        body: BlocBuilder<WatchlistBloc, WatchlistState>(
          builder: (context, state) {
            if (state is OnWatchlistError) {
              return ErrorMessageView(
                onRetry: () {
                  context.read<WatchlistBloc>().add(const GetWatchlist());
                },
              );
            }
            return _buildWatchlistBody(state);
          },
        ),
      ),
    );
  }

  /// Watchlist body content
  Widget _buildWatchlistBody(WatchlistState state) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildMoviesStoriesSection(state.movies ?? []),
              _buildWatchlistSection(state.movies ?? []),
            ],
          ),
        ),
        if (state.isLoading == true)
          const Center(child: CircularProgressIndicator())
      ],
    );
  }

  /// Movies Stories content
  Widget _buildMoviesStoriesSection(List<Movie> movies) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 8.0),
          child: Text("Stories"),
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
  Widget _buildWatchlistSection(List<Movie> movies) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: Text("My movies"),
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
                onTapItem: () {
                  debugPrint("movie item tapped: ${movies[index].title}");
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
