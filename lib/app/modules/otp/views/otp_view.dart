import 'package:ads_frontend_test/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:get/get.dart';

import '../../../themes/app_color.dart';
import '../../../utils/appbar.dart';
import '../../../utils/button.dart';
import '../../../utils/icons.dart';
import '../../../widgets/button_circle.dart';
import '../../../widgets/text_field_form.dart';
import '../../login/controllers/login_controller.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controllerLogin = Get.put(LoginController());
    return GestureDetector(
      onTap: () {
        controllerLogin.dismissKeyboard(context);
      },
      child: Scaffold(
        appBar: BaseAppBar.appBar(
            styleText: Theme.of(context).textTheme.titleMedium,
            backgroundColor: AppColors.transparant,
            elevation: 0,
            leading: ButtonCircleWidget(
              icon: AppIcons.svg(
                'ic-back',
                width: 30,
              ),
              onTap: () {
                Get.toNamed(Routes.LOGIN);
              },
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 11),
                  child: Center(
                    child: Text(
                      'OTP Verification',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Please check your email to see the verification code',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'OTP Code',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: OtpTextField(
                    borderRadius: BorderRadius.circular(10),
                    disabledBorderColor: Colors.transparent,
                    enabledBorderColor: Colors.transparent,
                    focusedBorderColor: Colors.transparent,
                    margin: const EdgeInsets.all(8),
                    fieldWidth: 70,
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    autoFocus: true,
                    numberOfFields: 4,
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {},
                    // end onSubmit
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: BaseButton.btn(
                    color: AppColors.primaryColor,
                    padding: const EdgeInsets.all(15),
                    label: 'Reset Password',
                    styleText: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppColors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Resend code to',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      '00:30 ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
