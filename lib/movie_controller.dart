//import 'dart:math';
import 'dart:math';
import 'movie.dart';
import 'movie_model.dart';


class MovieController {
     final model = MovieModel();
     int num = 0;

     Future<Movie> get movie {
       return model.movie;
     }
 
  loadMovie(){
    model.fetchMovie(Random().nextInt(1000));
  }
}

