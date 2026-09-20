import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  void createAccount() {
    final username = usernameController.text.trim();
    final password = passwordController.text.trim();
    final email = emailController.text.trim();
    final phone = phoneController.text.trim();

    if ([username, password, email, phone].any((value) => value.isEmpty)) {
      Get.snackbar(
        'Validation',
        'Please fill in all fields.',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    Get.snackbar(
      'Success',
      'Account created for $username!',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void goToLogin() {
    Get.back();
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.onClose();
  }
}
