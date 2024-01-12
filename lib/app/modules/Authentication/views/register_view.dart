import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:reeco/app/global/theme/my_color.dart';
import 'package:reeco/app/global/theme/my_text_style.dart';
import 'package:reeco/app/modules/Authentication/controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Register",
                      style: textTitleM(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              controller: controller.firstNameController,
                              decoration: InputDecoration(
                                hintText: "Enter First Name",
                                hintStyle: textBodyS(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16,),
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              controller: controller.lastNameController,
                              decoration: InputDecoration(
                                hintText: "Enter Last Name",
                                hintStyle: textBodyS(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: controller.emailController,
                        decoration: InputDecoration(
                          hintText: "Enter Your Email",
                          hintStyle: textBodyS(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: controller.phoneNumberController,
                        decoration: InputDecoration(
                          hintText: "Enter Your Phone Number",
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
                            controller: controller.passwordController,
                            obscureText: controller.isHidePassword.value,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: controller.hidePasswordToggle,
                                  icon: Icon(controller.isHidePassword.value
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined)),
                              hintText: "Create Password",
                              hintStyle: textBodyS(),
                              labelStyle: textBodyS(),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 40,
                      child: Obx(() => TextField(
                            controller: controller.confirmPasswordController,
                            obscureText: controller.isHideConfirmPassword.value,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: controller.hideConfirmPasswordToggle,
                                  icon: Icon(controller.isHideConfirmPassword.value
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined)),
                              hintText: "confirm Password",
                              hintStyle: textBodyS(),
                              labelStyle: textBodyS(),
                            ),
                          )),
                    ),
                   SizedBox(height: 20),
                    SizedBox(
                        width: double.infinity,
                        child:
                            ElevatedButton(onPressed: () {}, child: Text("Register"))),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("already have an account?", style: textNormal()),
                        TextButton(
                            onPressed: () {Get.back();},
                            child: Text(
                              "Login Here",
                              style: textBodyS(
                                  color: primaryColor,
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
