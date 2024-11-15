import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferme/utils/size_config.dart';
import 'package:transferme/utils/styles.dart';

import '../../../controller/auth_controller.dart';
import '../../../utils/colors.dart';
import '../../../utils/widgets/underline_text_field.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});

  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        width: 75,
                        height: 75,
                      ),
                      (screenHeight(context) * 0.01).sh,
                      const Text(
                        'Login',
                        style: AppStyles.textStyle35,
                      ),
                    ],
                  ),
                ],
              ),
              (screenHeight(context) * 0.08).sh,
              UnderlinedTextField(
                label: 'Email',
                controller: authController.emailController,
              ),
              Obx(
                () => UnderlinedTextField(
                  label: 'Password',
                  controller: authController.passwordController,
                  obscureText: authController.obscurePassword.value,
                  suffixIcon: IconButton(
                    icon: Icon(authController.obscurePassword.value
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: authController.togglePasswordVisibility,
                  ),
                ),
              ),
              Obx(
                () => UnderlinedTextField(
                  label: 'Confirm Password',
                  controller: authController.confirmPasswordController,
                  obscureText: authController.obscureConfirmPassword.value,
                  suffixIcon: IconButton(
                    icon: Icon(authController.obscureConfirmPassword.value
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: authController.toggleConfirmPasswordVisibility,
                  ),
                ),
              ),
              (screenWidth(context) * 0.02).sh,
              ElevatedButton(
                onPressed: authController.login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.accentColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
              (screenHeight(context)*0.05).sh,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: screenWidth(context)*0.3,
                    color: Colors.grey,
                  ),
                  Text('OR',style: AppStyles.textStyle15.copyWith(color: Colors.grey),),
                  Container(
                    height: 2,
                    width: screenWidth(context)*0.3,
                    color: Colors.grey,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        size: 70,
                        color: AppColors.accentColor,
                      ),
                  ), IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.tiktok,
                        size: 70,
                        color: AppColors.accentColor,
                      ),
                  ),
                ],
              ),
              TextButton(
                onPressed: authController.navigateToSignUp,
                child: const Text("Don't have an account? Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
