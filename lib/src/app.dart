import 'package:flutter/material.dart';

class App extends StatefulWidget{
  createState(){
    return AppStateKeeper();
  }
}

class AppStateKeeper extends State<App> {

  int myScoreValue = 1;

  //defining background colors for parts of the widget here
  final Color barColor = const Color(0xFF74B9FF);
  final Color bgColor = const Color(0xFF2C3335);
  final Color fabColor = const Color(0xFF3498DB);
  final Color IconColor = const Color(0xFFFFFFFF);

  Widget build(context){
    return MaterialApp(
    home: Scaffold(
      body: Text(
        '$myScoreValue',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          fontSize: 50.0, 
          color: Color(0xFFFFFFFF),
          ),
        ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: IconColor,),
        onPressed: (){
          setState(() {
            myScoreValue = myScoreValue + 1;
          });
        },
        backgroundColor: barColor,
      ),
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('AdDrive - A Project by Charles M. Kim'),
        backgroundColor: barColor,
      ),
    ),
  );
  }
}