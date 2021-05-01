class Movie{

 List<Detalhe> details;

}

class Detalhe {
  String titulo;
  String postPath;
  String data;

  Detalhe.fromJson(Map<String,dynamic> json) {
    titulo = json["title"];
   postPath = json["poster_path"];
   data = json["release_date"];
  }

}