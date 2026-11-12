import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_route.dart';
import 'package:get/get.dart';

//import 'package:flutter_application_1/localstorage.dart';
//import 'package:flutter_application_1/test.dart/image_code.dart';
//import 'package:get/get_navigation/src/root/get_material_app.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await GetStorage.init();
//   runApp(Localstorage());
// }
void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      getPages: AppRoutes.pages,
    ),
  );
}
