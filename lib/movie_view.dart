import 'dart:html';

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
                        color:Colors.redAccent,
                        height: 820,
                        width: 400,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      ),
                      Center(
                        child: Container(
                        color:Colors.red,
                        height: 730,
                        width: 360,                          
                        ),
                      ),
                      Center(
                        child: Container(
                        color:Colors.brown,
                        height: 640,
                        width: 320,                          
                        ),
                      ),                      
                    ],
                 )
                )  
             ],
           ),
       );
    }

}