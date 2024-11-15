import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../controller/bottom_nav_controller.dart';
import '../../../utils/colors.dart';
import '../../../utils/size_config.dart';
import 'bottom_nav_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({super.key});

  final bottomNavController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: screenWidth(context) * 0.8,
        height: screenHeight(context) * 0.075,
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(bottom: screenHeight(context) * 0.01),
        padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.06),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: AppColors.accentColor.withOpacity(0.7),
              blurRadius: 15,
              spreadRadius: 10,
              offset: const Offset(0, 7),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavItem(
              icon: HugeIcons.strokeRoundedHome03,
              index: 0,
              controller: bottomNavController,
            ),
            BottomNavItem(
              icon: HugeIcons.strokeRoundedWallet02,
              index: 1,
              controller: bottomNavController,
            ),
            BottomNavItem(
              icon: HugeIcons.strokeRoundedAnalytics01,
              index: 2,
              controller: bottomNavController,
            ),
            BottomNavItem(
              icon: HugeIcons.strokeRoundedUserSharing,
              index: 3,
              controller: bottomNavController,
            ),
          ],
        ),
      ),
    );
  }
}

