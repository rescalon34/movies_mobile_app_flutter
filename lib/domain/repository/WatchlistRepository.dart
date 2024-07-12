
import '../model/Movie.dart';

class WatchlistRepository {

  List<Movie> getWatchlistMovies() {
    // TODO: get movies from the network API
    var movies = [
      Movie(0, "Inside Out", "https://media.themoviedb.org/t/p/original/t7bhjraXuN4hd3yZVBVVhP3BdX0.jpg"),
      Movie(1, "Migration", "https://image.tmdb.org/t/p/original/ldfCF9RhR40mppkzmftxapaHeTo.jpg"),
      Movie(2, "Ultraman", "https://image.tmdb.org/t/p/original/yy4PktMbJfMp4H8GFAssBxHt0tY.jpg"),
      Movie(3, "The Godfather Part II", "https://image.tmdb.org/t/p/original/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg"),
      Movie(4, "StarWars", "https://image.tmdb.org/t/p/original/6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg"),
      Movie(5, "Bad Boys Ride or Die", "https://image.tmdb.org/t/p/original/nP6RliHjxsz4irTKsxe8FRhKZYl.jpg"),
      Movie(6, "Immaculate", "https://image.tmdb.org/t/p/original/fdZpvODTX5wwkD0ikZNaClE4AoW.jpg"),
      Movie(7, "Sting", "https://image.tmdb.org/t/p/original/zuSAZIG1PSrxFwPeAlGtg9LTwxo.jpg"),
      Movie(8, "No Time to Spy: A Loud House Movie", "https://image.tmdb.org/t/p/original/mh4Mk95u7fdY4D4t5kRGQpQbVFy.jpg"),
      Movie(9, "Inside Out 2", "https://image.tmdb.org/t/p/original/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg"),
      Movie(10, "Parasite", "https://image.tmdb.org/t/p/original/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg"),
      Movie(11, "The Green Mile", "https://image.tmdb.org/t/p/original/8VG8fDNiy50H4FedGwdSVUPoaJe.jpg"),
      Movie(12, "rey for the Devil", "https://image.tmdb.org/t/p/original/iCvgemXf2Kpr2LvpDmt5J9NhjKM.jpg"),
      Movie(13, "The Super Mario Bros. Movie", "https://image.tmdb.org/t/p/original/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"),
    ];

    return movies;
  }
}
