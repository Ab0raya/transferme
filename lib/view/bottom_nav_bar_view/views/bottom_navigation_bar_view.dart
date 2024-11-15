import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferme/utils/colors.dart';

import '../../../controller/bottom_nav_controller.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class BottomNavigationBarView extends StatelessWidget {
   BottomNavigationBarView({super.key});
  final bottomNavController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Obx(
                () =>
             Stack(
              children: [
                bottomNavController.views[bottomNavController.currentIndex.value],
                 CustomBottomNavigationBar()
              ],
            )
        )
    );
  }
}

