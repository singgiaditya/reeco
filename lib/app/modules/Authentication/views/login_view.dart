import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:reeco/app/global/theme/my_color.dart';
import 'package:reeco/app/global/theme/my_text_style.dart';
import 'package:reeco/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: textTitleM(),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: TextField(
                controller: controller.emailPhoneController,
                decoration: InputDecoration(
                  hintText: "Enter Your Email/Phone",
                  hintStyle: textBodyS(),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 40,
              child: Obx(() => TextField(
                    controller: controller.PasswordController,
                    obscureText: controller.isHide.value,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: controller.hidePasswordToggle,
                          icon: Icon(controller.isHide.value
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined)),
                      hintText: "Enter Your Password",
                      hintStyle: textBodyS(),
                      labelStyle: textBodyS(),
                    ),
                  )),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text("Forgot Password?",
                        style: textNormal(color: primaryColor)))),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  Get.offNamed(Routes.navigationBar);
                }, child: Text("Login"))),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have an account?", style: textNormal()),
                TextButton(
                    onPressed: (){Get.toNamed(Routes.register);},
                    child: Text(
                      "Register Here",
                      style: textBodyS(
                          color: primaryColor,
                          decoration: TextDecoration.underline),
                    ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
