import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  int currentPageIndex = 0;

  // Update Current Index when Page Scroll
  void updatePageIndicator(index) {
    currentPageIndex = index;
  }

  // Jump to the specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex = index;
    pageController.jumpToPage(index);
  }

  // Update Current Index & Jump to next page
  void nextPage() {
    if (currentPageIndex == 2) {
      Get.offAll(const LoginScreen());
    } else {
      currentPageIndex = currentPageIndex + 1;
      pageController.jumpToPage(currentPageIndex);
    }
  }

  // Update Current Index & Jump to the last page
  void skipPage() {
    currentPageIndex = 2;
    pageController.jumpToPage(currentPageIndex);
  }
}
