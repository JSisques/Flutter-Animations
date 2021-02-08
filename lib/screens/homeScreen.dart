import 'dart:math';

import 'package:animation_example/app/app.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  
  @override
  HomeScreenState createState() => HomeScreenState();

}

class HomeScreenState extends State<HomeScreen>{

  double width = 50;
  double heigth = 50;
  Color color = Colors.green;
  BorderRadiusGeometry borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: AnimatedContainer(
          width: width,
          height: heigth,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius,
          ),
          duration: Duration(
            seconds: 1,
          ),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){
          setState(() {
            final random = Random();
            width = random.nextInt(300).toDouble();
            heigth = random.nextInt(300).toDouble();
            color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1);
            borderRadius = BorderRadius.circular(random.nextInt(255).toDouble());
          });
        },
      ),
    );
  }
}