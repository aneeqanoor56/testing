import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(Localstorage());
}

class Localstorage extends StatefulWidget {
  const Localstorage({super.key});

  @override
  State<Localstorage> createState() => _LocalstorageState();
}

class _LocalstorageState extends State<Localstorage> {
  RxInt counter = 0.obs;
  final box = GetStorage();
  @override
  void initState() {
    super.initState();
    counter.value = box.read('counter') ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("local storage"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Obx(
          () => Center(
            child: Column(
              children: [
                Text('counter: ${counter.value}'),
                ElevatedButton(
                  onPressed: () {
                    counter.value--;
                    box.write('counter', counter.value);
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter.value++;
            box.write('counter', counter.value);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
