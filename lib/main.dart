import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('my app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Row(
            children: [
            Container(
              margin: EdgeInsets.symmetric(),
          color: Colors.purpleAccent,
          height: 120,
          width: 120,
        ),
            Container(
              margin: EdgeInsets.symmetric(),
          color: Colors.blue ,
          height: 120,
          width: 120,
            ),
            Container(
              margin: EdgeInsets.symmetric(),
          color: Colors.purpleAccent,
          height: 120,
          width: 120,
        ),
            Container(
              margin: EdgeInsets.symmetric(),
          color: Colors.blue ,
          height: 120,
          width: 120,
        ),
          ]
    
        ), 
        Row(
            children: [
            Container(
              margin: EdgeInsets.symmetric(),
          color: Colors.purpleAccent,
          height: 120,
          width: 120,
        ),
            Container(
              margin: EdgeInsets.symmetric(),
          color: Colors.blue ,
          height: 120,
          width: 120,
            ),
            Container(
              margin: EdgeInsets.symmetric(),
          color: Colors.purpleAccent,
          height: 120,
          width: 120,
        ),
            Container(
              margin: EdgeInsets.symmetric(),
          color: Colors.blue ,
          height: 120,
          width: 120,
        ),
          ]
    
        ), 
       ]
        ),
        
        )
          
      );

  }
}