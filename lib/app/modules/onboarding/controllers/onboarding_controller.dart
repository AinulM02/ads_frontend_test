import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final pageController = PageController();
  final selectedIndex = ValueNotifier(0);

  final images = [
    'img-onboarding-1',
    'img-onboarding-2',
    'img-onboarding-3',
  ];

  final title = [
    "",
    "Let’s Start Journey With Nike",
    "You Have the Power To",
  ];

  final desc = [
    "",
    "Smart, Gorgeous & Fashionable Collection Explor Now",
    "There Are Many Beautiful And Attractive Plants To Your Room",
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
