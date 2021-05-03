
import 'package:movienews_app/movie.dart';

import 'API.dart';

class MovieModel {

  Future<List<MovieDetalhes>>  _movie;

  Future<List<MovieDetalhes>>  get movie {
    return _movie;
  }

  fetchMovie(int num) {

    _movie = API().fetchMovie(num);
  }

}