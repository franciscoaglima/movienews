
import 'package:movienews_app/movie.dart';

import 'API.dart';

class MovieModel {

  Future<Movie> _movie;

  Future<Movie> get movie {
    return _movie;
  }

  fetchMovie(int num) {

    _movie = API().fetchMovie(num);
  }

}