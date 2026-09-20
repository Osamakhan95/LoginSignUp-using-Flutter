import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginsignup/SignUpPage.dart';

class HomeController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final rememberMe = false.obs;

  void toggleRememberMe(bool value) {
    rememberMe.value = value;
  }

  void login() {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        'Validation',
        'Please enter your email and password.',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    Get.snackbar(
      'Success',
      'Welcome back, $email!',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void goToSignUp() {
    Get.to(() => SignUpPage());
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
