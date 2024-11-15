import 'package:flutter/material.dart';

import '../colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.onTap, required this.label,
  });

  final Function() onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accentColor,
        padding:
        const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child:  Text(
        label,
        style: const TextStyle(color: AppColors.whiteColor),
      ),
    );
  }
}