import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferme/model/onboarding_model.dart';
import 'package:transferme/utils/app_router.dart';

class OnboardingController extends GetxController {
  List<OnboardingModel>
  onboardingData = [
    OnboardingModel(
      imagePath: 'assets/1.png',
      title: 'Easy fast & Trusted',
      desc: 'Fast money transfer and guaranteed safe transactions with others.',
    ),
    OnboardingModel(
      imagePath: 'assets/2.png',
      title: 'Free transactions',
      desc:
          'Provides the quality of the financial system with free money transactions without any fees.',
    ),
    OnboardingModel(
      imagePath: 'assets/3.png',
      title: 'Bills payment Made Easy',
      desc: 'Pay monthly or daily bills at home in a site of TransferMe.',
    ),
  ];

  RxInt currentPage = 0.obs;
  late PageController pageController;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  void updatePage(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < onboardingData.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {

      Get.offAllNamed(AppRouter.loginViewPath);
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
