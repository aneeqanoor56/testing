import 'package:flutter/material.dart';
import 'package:flutter_application_1/test.dart/chathistory.dart';
import 'package:get/get.dart';

void main() {
  runApp(Loginpage());
}

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  final email = TextEditingController();
  final password = TextEditingController();

  String correctemail = 'abcd@gamil.com';
  String correctpassword = '1234567890';

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("log in page"),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepPurpleAccent],
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 20),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'enter your email',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'enter your password',
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      print('hello');
                      if (email.text == correctemail &&
                          password.text == correctpassword) {
                        Get.snackbar('log success', 'worng log in details');

                        Get.to(const Chathistory());
                      } else {
                        Get.snackbar('log in failed', 'worng log in details');
                      }
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
