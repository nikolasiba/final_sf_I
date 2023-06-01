import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool login() {
    if (userController.text == 'admin' && passwordController.text == 'admin') {
      return true;
    }
    return false;
  }
}
