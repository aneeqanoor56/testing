import 'package:flutter_application_1/Auth_middleware.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const login = '/login';
  static const chatui = '/chatui';
  static const dashboard = '/dashboard';

  static final pages = [
    GetPage(name: login, page: () => Login()),
    GetPage(
      name: chatui,
      page: () => Chatui(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: dashboard,
      page: () => Dashboard(email: 'abcd@gamil.com', name: 'aneeqa'),
      middlewares: [AuthMiddleware()],
    ),
  ];
}
