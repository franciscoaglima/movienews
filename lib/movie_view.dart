import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movienews_app/movie.dart';
import 'movie_controller.dart';

class MovieView extends StatefulWidget {

   _MovieViewState createState() => _MovieViewState();

}

class _MovieViewState extends State<MovieView> {

    final controller = MovieController();

  get blue => null;

    // Inicializa o load dos filmes
    @override
    void initState() {
      super.initState();
      controller.loadMovie();

   }

    Widget build(BuildContext context) {
       return Scaffold(
         body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 820,
                        width: 400,
                        color: Colors.red,
                   // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.amber,),
                    ),
             Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FutureBuilder<List<MovieDetalhes>> (future: controller.movie,builder: (context,snapshot) {
                        if (snapshot.connectionState != ConnectionState.done) {return CircularProgressIndicator();}
                            if (snapshot.hasData) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,                                
                                mainAxisAlignment: MainAxisAlignment.center,  
                                children: [
                                  Text("Movies New",
                                  style: TextStyle(
                                    fontSize: 20
                                    ,
                                    color: Colors.white),
                                    ),                                  
                                  Container( 
                                  
                                    height: 720,
                                    width: 360,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
                                  
                                   child: ListView.builder(
                                     itemCount: 18,
                                     
                                      itemBuilder: (
                                       BuildContext context ,int index) {
                                        return ListTile(
//                                           title: Text("Título / Data : "+snapshot.data[index].titulo+" "+snapshot.data[index].data),
//                                           
                                          //    : Text("Lançamento em : "+snapshot.data[index].data),
                                        contentPadding: EdgeInsets.all(30.0),                                          
                                       // title: Image.network("https://image.tmdb.org/t/p/w300"+snapshot.data[index].urlImage),                                           
                                         title: Text(snapshot.data[index].titulo+"                                              Lançamento em : "+snapshot.data[index].data,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                                           subtitle:  Image.network("https://image.tmdb.org/t/p/w300"+snapshot.data[index].urlImage), 
                                           
                                         // leading:  Text(DateFormat("'Lançamento em :' dd/MM/yyyy").format(snapshot.data[index].data)), 
                                          enabled: false,
                                          dense: false,
                                          isThreeLine: true,
                                          );
                                        }
                                       ),
                                      ),
                                  Text(" ",style: TextStyle(fontSize: 10,color: Colors.white)),                                  
                                ],
                              );
                            } else if (snapshot.hasError) {
                              return Text(snapshot.error,
                              style: TextStyle(
                                  fontSize: 18, 
                                  color: Colors.redAccent),
                                  );
                                }
                            return Container();
                          },
                         ),
//                      ElevatedButton(onPressed: () {setState(() {controller.loadMovie();});}, child: Text("Load Filmes"),)
                    ],),),
                    ],
                 )
                )  
             ],
           ),
       );
    }

}

class DateFormat {
}