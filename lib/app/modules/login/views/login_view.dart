import 'package:ads_frontend_test/app/routes/app_pages.dart';
import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/utils/appbar.dart';
import 'package:ads_frontend_test/app/widgets/text_field_form.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/button.dart';
import '../../../utils/icons.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.dismissKeyboard(context);
      },
      child: Scaffold(
        appBar: BaseAppBar.appBar(
          styleText: Theme.of(context).textTheme.titleMedium,
          backgroundColor: AppColors.transparant,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 11),
                  child: Center(
                    child: Text(
                      'Hallo Again!',
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
                      'Fill your details or continue with social media',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldWidget(
                  label: 'Email',
                  hintText: 'Your Email',
                  inputController: controller.emailTextController,
                ),
                TextFormFieldWidget(
                  label: 'Password',
                  hintText: 'Your Password',
                  obscureText: true,
                  inputController: controller.passwordTextController,
                  suffix: AppIcons.svg(
                    'ic-eye-off',
                    color: AppColors.grey,
                    fit: BoxFit.none,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.FORGOT_PASSWORD);
                      },
                      child: Text(
                        'Recovery Password',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.grey),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: BaseButton.btn(
                    color: AppColors.primaryColor,
                    padding: const EdgeInsets.all(15),
                    onTap: () {
                      Get.toNamed(Routes.NAVIGATION);
                    },
                    label: 'Sign In',
                    styleText: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppColors.white),
                  ),
                ),
                BaseButton.btn(
                  color: Colors.grey.shade100,
                  padding: const EdgeInsets.all(15),
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: AppIcons.svg(
                      'ic-google',
                      fit: BoxFit.none,
                    ),
                  ),
                  onTap: () {},
                  label: 'Sing In With Google',
                  styleText: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 160,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 5,
                  children: [
                    Text(
                      'New User?',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: Text(
                        'Create Account',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
