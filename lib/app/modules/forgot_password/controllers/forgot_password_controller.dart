import 'package:ads_frontend_test/app/routes/app_pages.dart';
import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/utils/icons.dart';
import 'package:ads_frontend_test/app/widgets/button_circle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  void showDialog() {
    Get.defaultDialog(
      barrierDismissible: false,
      title: '',
      titlePadding: const EdgeInsets.all(0),
      radius: 16,
      contentPadding:
          const EdgeInsets.only(top: 0, bottom: 40, left: 15, right: 15),
      content: ButtonCircleWidget(
        color: AppColors.primaryColor,
        icon: AppIcons.svg("ic-email"),
      ),
      actions: [
        Column(
          children: [
            Text(
              'Check your email',
              style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              textAlign: TextAlign.center,
              'We have send password recovery code in your email',
              style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
    Future.delayed(const Duration(seconds: 3), () {
      Get.back();
      Get.offNamed(Routes.OTP);
    });
  }
}
