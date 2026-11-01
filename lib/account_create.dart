import 'package:flutter/material.dart';
import 'package:flutter_application_1/register_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(Register());
}

class Register extends StatelessWidget {
  Register({super.key});
  final email = TextEditingController();
  final name = TextEditingController();
  final password = TextEditingController();
  final verificatincode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'Create Account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Registerscreen(
          email: email,
          name: name,
          password: password,
          verificatincode: verificatincode,
        ),
      ),
    );
  }
}
