import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const new({super.key, required this.email, required this.name});
  final String email;
  final String name;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Text('email: $email'),
              Text('name: $name'),
              Text('aneeqa'),
              Text('4567'),
            ],
          ),
        ),
      ),
    );
  }
}
