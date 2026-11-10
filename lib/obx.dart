import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(Observcode());
}

class Observcode extends StatelessWidget {
  Observcode({super.key});
  Rx<Color> color = Colors.red.obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('observe'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: Obx(
          () => Container(
            color: color.value,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    color.value = color.value == Colors.red
                        ? Colors.blue
                        : Colors.red;
                  },
                  child: Text('log in '),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
