import 'package:animation_example/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animations",
      home: HomeScreen(),
    );
  }
}