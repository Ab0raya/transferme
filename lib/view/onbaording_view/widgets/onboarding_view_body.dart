import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferme/controller/onboarding_controller.dart';
import 'package:transferme/utils/colors.dart';
import 'onboarding_item.dart';

class OnboardingViewBody extends StatelessWidget {
  final controller = Get.put(OnboardingController());

  OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.updatePage,
                itemCount: controller.onboardingData.length,
                itemBuilder: (context, index) {
                  final data = controller.onboardingData[index];
                  return OnboardingItem(data: data);
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      controller.onboardingData.length,
                      (index) => Obx(() {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          height: 10,
                          width:
                              controller.currentPage.value == index ? 20 : 10,
                          decoration: BoxDecoration(
                            color: controller.currentPage.value == index
                                ? AppColors.accentColor
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: controller.nextPage,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.accentColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

