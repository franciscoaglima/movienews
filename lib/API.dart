import 'package:http/http.dart' as http;

import 'dart:convert';
import 'package:movienews_app/movie.dart';

class API {

  Map<String,String> queryParameters;

  Future<Movie> fetchMovie(int num) async {
 
    final url =  Uri.https("api.themoviedb.org", "/3/movie/upcoming", queryParameters = {"api_key":"a5c05fb630c9b7dc560033345fa13e",});

   final response = await http.get(url);
  
   if (response.statusCode == 200) {
      return Movie.fromJson(jsonDecode(response.body));
  
   } else {
     return Future.error("Filme Não Localizado...");
   }

  }

}

