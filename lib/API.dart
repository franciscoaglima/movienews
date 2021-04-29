import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:movienews_app/movie.dart';

class API {

  Future<Movie> fetchMovie(int num) async {
 
   final response = await http.get(Uri.https("api.themovie.org", "/3/movir/upcoming"));
  
   if (response.statusCode == 200) {
      return Movie.fromJson(jsonDecode(response.body));
  
   } else {
     return Future.error("Filme Não Localizado...");
   }

  }

}

