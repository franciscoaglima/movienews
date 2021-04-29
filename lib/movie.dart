class Movie{
  String titulo;
  String urlPath;
  String data;
  // List<Ability> abilities;
  
  int ord = 0; // weight
  int index = 0; // height
  int peso = 0; // weight

  Movie.fromJson(Map<String,dynamic> json){
   titulo = json["title"];
   urlPath = json["sprites"]["front_default"];

  }
}

