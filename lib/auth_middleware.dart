import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    bool isLoggedin = false;
    if (!isLoggedin) {
      return const RouteSettings(name: '/login');
    }
  }
}
