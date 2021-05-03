import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:movienews_app/movie.dart';

class API {

  Map<String,String> queryParameters;

  Future<List<MovieDetalhes>> fetchMovie(int num) async {

  String authority = "api.themoviedb.org";   
  String path = "/3/movie/upcoming";
 
   final url =  Uri.https(authority, path , queryParameters = {"api_key":"a5bc05fb630c9b7fdc560033345fa13e",});

   final response = await http.get(url);

  var responseJson;
  List listMovie;

   if (response.statusCode == 200) {
       responseJson  = (jsonDecode(response.body)); // Transformar para objeto Map
       listMovie = responseJson["results"] as List; // Transformar em List

       final arrayMovies = listMovie.map((movie){
        return MovieDetalhes.fromJson(movie); // Transformar em objeto MovieDetalhes
       }).toList();
       return arrayMovies;

   } else {
     return Future.error("Filme Não Localizado...");
   }

  }

}

