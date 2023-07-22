import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splash_controller.dart';
import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/utils/icons.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Wrap the icon with an AnimatedBuilder for fade-in animation
            AnimatedBuilder(
              animation: controller.animationController,
              builder: (context, child) {
                return Opacity(
                  opacity: controller.animationController.value,
                  child: AppIcons.svg(
                    'img-nike',
                    width: 150,
                  ),
                );
              },
            ),
            // Wrap the text with an AnimatedTextKit for animated text effect
            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'NIKE',
                  textStyle: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColors.white),
                  speed: const Duration(milliseconds: 600),
                  colors: SplashController.colorizeColors,
                ),
              ],
              isRepeatingAnimation: false,
              onFinished: () {
                // Replace 'NextPage' with the name of your next page route.
                Get.offNamed(Routes.ONBOARDING);
              },
            ),
          ],
        ),
      ),
    );
  }
}
