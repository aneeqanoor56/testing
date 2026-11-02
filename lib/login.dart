import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:get/get.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  Login({super.key});
  final email = TextEditingController();
  final password = TextEditingController();

  String correctemail = "aneeqa@gamil.com";
  String correctpassword = "1345678";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Log In Page'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.cyan, Colors.white]),
          ),

          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'enter your email',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                // SizedBox(height: 20),
                // TextField(
                //   decoration: InputDecoration(
                //     enabledBorder: OutlineInputBorder(),
                //     prefixIcon: Icon(Icons.code),
                //     filled: true,
                //     fillColor: Colors.white,
                //   ),
                // ),

                SizedBox(height: 20),

                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   colors: [Colors.black, Colors.cyanAccent],
                    // ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: Colors.transparent,
                    //   shadowColor: Colors.transparent,
                    // ),
                    onPressed: () {
                      if (email.text == correctemail &&
                          password.text == correctpassword) {
                        Get.to(Dashboard(email: email.text, name: "aneeqa"));
                      } else {
                        Get.snackbar('Login failed', "wrong details");
                      }
                    },
                    child: Text(
                      'log in',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
