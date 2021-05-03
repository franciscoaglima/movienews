class MovieDetalhes {
  String titulo;
  String urlImage;
  String data;
  String image;
// "pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg"
   MovieDetalhes.fromJson(Map<String,dynamic> json) {
    titulo = json["title"];
   urlImage = "https://image.tmdb.org/t/p/w300"+json["poster_path"];
   data = json["release_date"];
  }

}