// ignore_for_file: sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginsignup/controllers/signup_controller.dart';
import 'package:loginsignup/Widget/BoldText.dart';
import 'package:loginsignup/Widget/LightText.dart';
import 'package:loginsignup/Widget/MyContainer.dart';
import 'package:loginsignup/Widget/MyForm.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("lib/assets/images/shape8.png"),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  BoldText(text: "Welcome!"),
                  SizedBox(height: 10),
                  MyForm(
                    controller: controller.usernameController,
                    tittle: "Username",
                    icon: Icons.person_2_outlined,
                  ),
                  SizedBox(height: 10),
                  MyForm(
                    controller: controller.passwordController,
                    tittle: "Password",
                    icon: Icons.lock_outline,
                    obscureText: true,
                  ),
                  SizedBox(height: 10),
                  MyForm(
                    controller: controller.emailController,
                    tittle: "Email",
                    icon: Icons.email_outlined,
                  ),
                  SizedBox(height: 10),
                  MyForm(
                    controller: controller.phoneController,
                    tittle: "Phone",
                    icon: Icons.phone,
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: controller.createAccount,
                    child: MyContainer(
                      child: Center(child: BoldText(text: "Create", size: 25)),
                      height: 60,
                      width: double.maxFinite,
                      radius: 10,
                      color: Colors.yellow.shade700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LightText(text: "Already have an account?", size: 18),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: controller.goToLogin,
                  child: BoldText(text: "Login"),
                ),
              ],
            ),
            Image.asset("lib/assets/images/shape9.png"),
          ],
        ),
      ),
    );
  }
}
