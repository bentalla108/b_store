import 'package:b_store/features/authentication/onboarding_screen/contents/onboarding_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  Rx<int> currentPageindex = 0.obs;
  final pageController = PageController();
  // Update Current Index When Page Scroll
  void updatePageIndicator(index) => currentPageindex.value = index;

  //Jump to the specific dot page.
  void dotNavigationClick(index) {
    currentPageindex.value = index;
    pageController.jumpTo(index);
  }

  // Update current index et jump to next page.
  void nextPage() {
    if (currentPageindex.value == OnBoardindContent.subTitle.length - 1) {
      // Get.to(LoginScreen());
    } else {
      pageController.jumpTo(currentPageindex.value + 1);
    }
  }

  void skipPage() {
    currentPageindex.value = OnBoardindContent.subTitle.length - 1;
    pageController.jumpTo(OnBoardindContent.subTitle.length - 1);
  }
}
