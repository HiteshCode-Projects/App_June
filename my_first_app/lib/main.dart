import 'package:flutter/material.dart';

void main() {
  //  runApp(Value) 1.tell flutter to show Build It Method Of Flutter
  runApp(MyFirstScreen());
}

//1. WireFraming - Design - Sketch - Code

//Clas - Blueprint

class MyFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //In Build Method which help to Build Screen

    return MaterialApp(

        home: Scaffold(
              //Scaffold - Help us To Get Screen Strucure

                
           //Build Screen Design

           appBar: AppBar(title: Text("Whatsapp📞")),



           body: Center(

            child: Text("Welcome To Flutter"),


           ),




        ),


    );
  }
}
