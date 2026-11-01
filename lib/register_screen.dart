import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/login.dart';
import 'package:get/get.dart';

class Registerscreen extends StatelessWidget {
  const new({
    super.key,
    required this.email,
    required this.name,
    required this.password,
    required this.verificatincode,
  });

  final TextEditingController email;
  final TextEditingController name;
  final TextEditingController password;
  final TextEditingController verificatincode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal, Colors.tealAccent],
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 100),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Enter your email',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'name',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  hintText: 'enter password',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: verificatincode,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.code),
                  hintText: 'enter verification code',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(Dashboard(email: email.text, name: name.text));
                  // print('button');
                  print(name.text);
                  print(email.text);
                  print(password.text);
                  print(verificatincode.text);
                },
                child: Text('Register'),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Login());
                },
                child: Text(
                  'Already has an Account? Login',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
