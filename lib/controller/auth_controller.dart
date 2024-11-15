import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:transferme/utils/app_router.dart';
import 'package:transferme/utils/colors.dart';

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  var obscurePassword = true.obs;
  var obscureConfirmPassword = true.obs;

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  void toggleConfirmPasswordVisibility() {
    obscureConfirmPassword.value = !obscureConfirmPassword.value;
  }

  Future<void> login() async {
    Get.toNamed(AppRouter.profileViewPath);
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('Error', 'Please enter both email and password',
          backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }

    final response = await http.post(
      Uri.parse("http://192.168.100.8:8000/login"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": emailController.text,
        "password": passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      Get.snackbar('Success', 'Logged in successfully',
          backgroundColor: Colors.green, colorText: Colors.white);
      Get.toNamed(AppRouter.profileViewPath);
    } else {
      Get.snackbar('Error', jsonDecode(response.body)["detail"],
          backgroundColor: Colors.red, colorText: Colors.white);
      Get.toNamed(AppRouter.profileViewPath);
    }
  }

  Future<void> signUp() async {
    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      Get.snackbar('Error', 'All fields are required',
          backgroundColor: Colors.red, colorText: Colors.white);
      return;
    } else if (passwordController.text != confirmPasswordController.text) {
      Get.snackbar('Error', 'Passwords do not match',
          backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }

    final response = await http.post(
      Uri.parse("http://192.168.100.8:8000/signup"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": emailController.text,
        "password": passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      Get.snackbar('Success', 'Account created successfully',
          backgroundColor: AppColors.accentColor, colorText: Colors.white);
    } else {
      Get.snackbar('Error', jsonDecode(response.body)["detail"],
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  void navigateToSignUp() {
    Get.offNamed(AppRouter.loginViewPath);
  }

  void navigateToLogin() {
    Get.back();
  }


}
