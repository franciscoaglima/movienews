import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movienews_app/movie.dart';
import 'movie_controller.dart';

class MovieView extends StatefulWidget {

   _MovieViewState createState() => _MovieViewState();

}

class _MovieViewState extends State<MovieView> {

    final controller = MovieController();

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
                        color: Colors.pink,
                   // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.amber,),
                    ),
             Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FutureBuilder<List<MovieDetalhes>> (future: controller.movie,builder: (context,snapshot) {
                        if (snapshot.connectionState != ConnectionState.done) {return CircularProgressIndicator();}
                            if (snapshot.hasData) {
                              return Column(  
                                children: [
                                  Text("Código",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black),
                                    ),                                  
                                  Container( 
                                    color: Colors.yellow,
                                    height: 80,
                                    width: 280,
                                   child: ListView.builder(
                                     itemCount: 2,
                                      itemBuilder: (
                                       BuildContext context ,int index) {
                                        return ListTile(
                                          title: Text(snapshot.data[index].titulo),
                                          );
                                        }
                                       ),
                                      ),
                                  Text(" ",style: TextStyle(fontSize: 10,color: Colors.black)),                                  
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
                      ElevatedButton(onPressed: () {setState(() {controller.loadMovie();});}, child: Text("Load Filmes"),)
                    ],),),

//                     Center(child: Container(height: 640,width: 320,
//                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blue,), ),),                      
                    ],
                 )
                )  
             ],
           ),
       );
    }

}