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
        appBar: AppBar(title: Text('my app'), centerTitle: true),
        body: Row(
          children: [
            Expanded(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.symSmetric(),
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      // margin: EdgeInsets.symmetric(),
                      color: Colors.green,
                      //width: 100,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.symmetric(),
                      color: Colors.lightGreen,
                      //width: 100,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.symmetric(),
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.symmetric(),
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.symmetric(),
                      color: Colors.orange,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.symmetric(),
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
