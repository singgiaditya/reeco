import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TODO: Implement AuthenticationController
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final isHidePassword = true.obs;
  final isHideConfirmPassword = true.obs;
  void hidePasswordToggle() => isHidePassword.toggle();
  void hideConfirmPasswordToggle() => isHideConfirmPassword.toggle();
}
