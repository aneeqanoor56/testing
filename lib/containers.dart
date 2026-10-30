import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.black26,
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(child: Container(color: Colors.green)),
                  Expanded(flex: 3, child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.blue)),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(child: Container(color: Colors.black)),
                  Expanded(child: Container(color: Colors.purple)),
                  Expanded(child: Container(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
