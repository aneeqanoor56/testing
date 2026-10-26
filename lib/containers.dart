import 'package:flutter/material.dart';

void main() {
  runApp(Containers());
}

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white, title: Text('my app')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.symmetric(),
              color: Colors.red,
              height: 120,
              width: 120,
            ),
            Container(
              margin: EdgeInsets.symmetric(),
              color: Colors.green,
              height: 200,
              width: 120,
            ),
            Container(
              margin: EdgeInsets.symmetric(),
              color: Colors.lightGreen,
              height: 120,
              width: 120,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.blue,
                  height: 120,
                ),

                Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.black,
                  height: 120,
                ),
                Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.orange,
                  height: 120,
                ),

                Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.purple,
                  height: 120,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
