import 'package:flutter/material.dart';
import 'package:movies_mobile_app_flutter/domain/repository/watchlist_repository.dart';

import '../../../domain/model/movie.dart';
import '../../components/movie_item.dart';
import 'watchlist_appbar.dart';

class WatchlistPage extends StatefulWidget {
  const WatchlistPage({super.key});

  @override
  State<WatchlistPage> createState() => _WatchlistPageState();
}

/// Screen state
class _WatchlistPageState extends State<WatchlistPage> {
  late WatchlistRepository watchlistRepository;
  late List<Movie> movies;

  @override
  void initState() {
    // TODO, not the right place to call it, but it works for now just to fetch mock data.
    watchlistRepository = WatchlistRepository();
    movies = watchlistRepository.getWatchlistMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WatchlistAppBar(),
      body: _buildMainWatchlistBody(movies),
    );
  }

  /// Main Watchlist screen content
  Widget _buildMainWatchlistBody(List<Movie> movies) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMoviesStoriesSection(movies),
          _buildWatchlistSection(movies),
        ],
      ),
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
