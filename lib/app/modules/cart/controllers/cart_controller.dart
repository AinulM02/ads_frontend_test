import 'package:ads_frontend_test/app/routes/app_pages.dart';
import 'package:ads_frontend_test/app/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../themes/app_color.dart';
import '../../../utils/icons.dart';
import '../../../widgets/button_circle.dart';

class CartController extends GetxController {
  void showDialog() {
    Get.defaultDialog(
      barrierDismissible: false,
      title: '',
      titlePadding: const EdgeInsets.all(0),
      radius: 16,
      contentPadding:
          const EdgeInsets.only(top: 0, bottom: 30, left: 20, right: 20),
      content: ButtonCircleWidget(
        color: AppColors.primaryColor.withOpacity(0.2),
        icon: Padding(
          padding: const EdgeInsets.all(15),
          child: AppIcons.png("img-party", fit: BoxFit.none),
        ),
      ),
      actions: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                textAlign: TextAlign.center,
                'Your Payment Is Successful',
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BaseButton.btn(
              color: AppColors.primaryColor,
              label: 'Back to Shoping',
              styleText: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
              onTap: () {
                Get.offAllNamed(Routes.NAVIGATION);
              },
            )
          ],
        )
      ],
    );
    Future.delayed(const Duration(seconds: 5), () {
      Get.offAllNamed(Routes.NAVIGATION);
    });
  }
}
