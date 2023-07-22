import 'package:ads_frontend_test/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../themes/app_color.dart';
import '../../../utils/appbar.dart';
import '../../../utils/button.dart';
import '../../../utils/icons.dart';
import '../../../widgets/button_circle.dart';
import '../../../widgets/text_field_form.dart';
import '../../login/controllers/login_controller.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
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
                Get.back();
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
                      'Forgot Password',
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
                      'Enter your Email account to reset your password',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
                TextFormFieldWidget(
                  hintText: 'Your Email',
                  obscureText: true,
                  inputController: controllerLogin.passwordTextController,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: BaseButton.btn(
                    color: AppColors.primaryColor,
                    padding: const EdgeInsets.all(15),
                    onTap: () {
                      controller.showDialog();
                    },
                    label: 'Reset Password',
                    styleText: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppColors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
