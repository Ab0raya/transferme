import 'package:flutter/material.dart';
import 'package:transferme/utils/colors.dart';

class UnderlinedTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;

  const UnderlinedTextField({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          focusColor: AppColors.accentColor,

          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.accentColor),
            
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
