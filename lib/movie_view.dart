import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                        color:Colors.white,
                        height: 820,
                        width: 400,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                      Center(
                        child: Container(
                        height: 730,
                        width: 390,  
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.amber,),                      
                        ),
                      ),
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