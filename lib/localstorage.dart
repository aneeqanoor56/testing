import 'package:flutter/material.dart';
//import 'package:flutter_application_1/app_route.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

//import 'localstorage.dart';

class Localstorage extends StatefulWidget {
  const Localstorage({super.key});

  @override
  State<Localstorage> createState() => _LocalstorageState();
}

class _LocalstorageState extends State<Localstorage> {
  RxInt counter = 0.obs;
  final box = GetStorage();
  //Rx<Color> color = Colors.red.obs;
  @override
  void initState() {
    super.initState();
    counter.value = box.read('counter') ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: AppRoutes.login,
      // getPages: AppRoutes.pages,
      home: Scaffold(
        appBar: AppBar(
          title: Text("local storage"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Homescreen(counter: counter, box: box),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter.value++;
            box.write('counter', counter.value);
            // color.value = color.value == Colors.red ? Colors.blue : Colors.red;
          },

          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class Homescreen extends StatelessWidget {
  new({super.key, required this.counter, required this.box});

  final RxInt counter;
  final GetStorage box;
  Rx<Color> color = Colors.red.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Center(
        child: Column(
          children: [
            Text('counter: ${counter.value}'),
            ElevatedButton(
              onPressed: () {
                counter.value--;
                box.write('counter', counter.value);
                // color.value = color.value == Colors.red
                //     ? Colors.blue
                //     : Colors.red;
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
