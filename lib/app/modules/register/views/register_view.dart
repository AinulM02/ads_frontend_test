import 'package:ads_frontend_test/app/modules/login/controllers/login_controller.dart';
import 'package:ads_frontend_test/app/widgets/button_circle.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../themes/app_color.dart';
import '../../../utils/appbar.dart';
import '../../../utils/button.dart';
import '../../../utils/icons.dart';
import '../../../widgets/text_field_form.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return GestureDetector(
      onTap: () {
        controller.dismissKeyboard(context);
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
          ),
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
                      'Register Account',
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
                  label: 'Name',
                  hintText: 'Your Name',
                  inputController: controller.nameTextController,
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
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: BaseButton.btn(
                    color: AppColors.primaryColor,
                    padding: const EdgeInsets.all(15),
                    onTap: () {},
                    label: 'Sign Up',
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
                  height: 80,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 5,
                  children: [
                    Text(
                      'Already Have Account?',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'Log In',
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
