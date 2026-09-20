// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace, file_names, unused_import

import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:loginsignup/controllers/home_controller.dart";
import "package:loginsignup/Widget/BoldText.dart";
import "package:loginsignup/Widget/LightText.dart";
import "package:loginsignup/Widget/MyContainer.dart";
import "package:loginsignup/Widget/MyForm.dart";

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("lib/assets/images/shape7.png"),
          SizedBox(height: 45),

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                BoldText(text: "Welcome Back !"),
                SizedBox(height: 10),
                MyForm(
                  controller: controller.emailController,
                  tittle: "Email",
                  icon: Icons.email_outlined,
                ),
                SizedBox(height: 20),
                MyForm(
                  controller: controller.passwordController,
                  tittle: "Password",
                  icon: Icons.lock_outline_rounded,
                  obscureText: true,
                ),
                Transform.translate(
                  offset: Offset(-12, 0),
                  child: Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          side: BorderSide(color: Colors.orange),
                          checkColor: Colors.white,
                          activeColor: Colors.yellow.shade700,
                          value: controller.rememberMe.value,
                          onChanged: (value) {
                            if (value != null) {
                              controller.toggleRememberMe(value);
                            }
                          },
                        ),
                      ),
                      BoldText(
                        text: "Remember me",
                        size: 15,
                        color: Colors.orange.shade400,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: controller.login,
                  child: MyContainer(
                    child: Center(child: BoldText(text: "Login", size: 25)),
                    height: 70,
                    width: double.maxFinite,
                    radius: 10,
                    color: Colors.yellow.shade700,
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LightText(text: "Don't have an account?"),
                    SizedBox(width: 3),
                    GestureDetector(
                      onTap: controller.goToSignUp,
                      child: BoldText(text: "Sign up"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset("lib/assets/images/shape6.png"),
        ],
      ),
    );
  }
}
