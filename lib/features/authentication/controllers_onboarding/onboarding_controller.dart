import 'package:e_commerce/features/authentication/screen/login/widgets/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  // update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // jump to the specific dot selected page.
  void dotNavigationCLick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // update Current Index & jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
