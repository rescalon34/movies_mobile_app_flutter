import 'package:flutter/material.dart';
import 'package:movies_mobile_app_flutter/domain/repository/WatchlistRepository.dart';

import '../../components/GenericIcon.dart';
import '../../components/MovieItem.dart';
import '../../domain/model/Movie.dart';

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
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: MainPageContent(movies: movies),
        ));
  }
}

/// AppBar
class WatchlistAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WatchlistAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Watchlist",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              GenericIcon(
                icon: Icons.cast,
                color: Colors.white,
                onTapIcon: () {
                  print("tapping on cast icon");
                },
              ),
              const SizedBox(
                width: 8,
              ),
              GenericIcon(
                icon: Icons.share,
                color: Colors.white,
                onTapIcon: () {
                  print("tapping on share icon");
                },
              ),
            ],
          ),
        )
      ],
      backgroundColor: Colors.indigoAccent,
    );
  }
}

/// Main Screen content
class MainPageContent extends StatelessWidget {
  const MainPageContent({super.key, required this.movies});

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MovieStoriesSection(movies: movies),
          WatchlistSection(movies: movies),
        ],
      ),
    );
  }
}

/// Movies Stories content
class MovieStoriesSection extends StatelessWidget {
  const MovieStoriesSection({super.key, required this.movies});

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
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
                padding: const EdgeInsets.all(4.0),
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
}

/// Watchlist content
class WatchlistSection extends StatelessWidget {
  const WatchlistSection({super.key, required this.movies});

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
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
                print("movie item tapped: ${movies[index].title}");
              },
            );
          },
        ),
      ],
    );
  }
}
