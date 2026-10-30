import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key, required this.name, required this.n});
  final String name;
  final int n;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('$name')),
        body: Container(child: Text('body')),
      ),
    );
  }
}
