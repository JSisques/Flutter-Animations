import 'dart:math';

import 'package:animation_example/app/app.dart';
import 'package:animation_example/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget{

    static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (context) => SecondScreen(),
    );
  }
  
  @override
  SecondScreenState createState() => SecondScreenState();

}

class SecondScreenState extends State<SecondScreen>{

  double width = 50;
  double heigth = 50;
  Color color = Colors.green;
  BorderRadiusGeometry borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: (){
            Scaffold.of(context).showSnackBar(SnackBar(content: Text("Hola")));
          },
          onTap: (){
            Navigator.pop(context);
          },
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
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){
          
          setState(() {
            final random = Random();
            width = random.nextInt(400).toDouble();
            heigth = random.nextInt(400).toDouble();
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