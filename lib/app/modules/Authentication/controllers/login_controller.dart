import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement AuthenticationController

  TextEditingController emailPhoneController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  final isHide = true.obs;
  void hidePasswordToggle() => isHide.toggle();
}
