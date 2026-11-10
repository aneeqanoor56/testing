import 'package:flutter_application_1/test.dart/loginpage.dart';
import 'package:flutter_application_1/test.dart/chathistory.dart';
//import 'package:flutter_application_1/theme.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const chatui = '/chatui';
  static const login = '/login';

  static final pages = [
    GetPage(name: login, page: () => Loginpage()),
    GetPage(name: chatui, page: () => Chathistory()),
  ];
}
