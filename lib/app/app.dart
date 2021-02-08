import 'package:animation_example/screens/homeScreen.dart';
import 'package:animation_example/screens/secondScreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animations",
      routes: { //Definimos las rutas de la aplicación
        "Home": (context) => HomeScreen(),
        "Second": (context) => SecondScreen(),
      },
      home: HomeScreen(),
    );
  }
}