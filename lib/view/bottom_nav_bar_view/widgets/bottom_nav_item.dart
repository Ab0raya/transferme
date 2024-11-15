import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:transferme/utils/size_config.dart';

import '../../../controller/bottom_nav_controller.dart';
import '../../../utils/colors.dart';

import 'package:get/get.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final int index;
  final BottomNavController controller;

  const BottomNavItem({
    super.key,
    required this.icon,
    required this.index,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isSelected = controller.currentIndex.value == index;
      return AnimatedContainer(
        height: screenHeight(context)*0.07,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.accentColor : AppColors.whiteColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        child: IconButton(
          onPressed: () => controller.changeIndex(newIndex: index),
          icon: HugeIcon(
            icon: icon,
            color: isSelected ? AppColors.whiteColor : AppColors.secAccentColor,
            size: 35.0,
          ),
        ),
      );
    });
  }
}
