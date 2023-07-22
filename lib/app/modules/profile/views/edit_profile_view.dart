import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/utils/appbar.dart';
import 'package:ads_frontend_test/app/utils/icons.dart';
import 'package:ads_frontend_test/app/widgets/text_field_form.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/button.dart';
import '../../../widgets/button_circle.dart';
import '../controllers/profile_controller.dart';

class EditProfileView extends GetView<ProfileController> {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.appBar(
        title: 'My Cart',
        styleText: Theme.of(context).textTheme.headlineSmall,
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                  child: AppIcons.png(
                    'img-person-edit',
                    fit: BoxFit.contain,
                    width: 100,
                  ),
                ),
                Text(
                  'Your Name',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  label: 'Name',
                  hintText: 'Your Name',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.grey),
                ),
                TextFormFieldWidget(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  label: 'Email',
                  hintText: 'Your Email',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.grey),
                ),
                TextFormFieldWidget(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  label: 'PassWord',
                  hintText: 'Your Password',
                  obscureText: true,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.grey),
                ),
                TextFormFieldWidget(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  label: 'Mobile Number',
                  hintText: 'Your Mobile Number',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 40,
                ),
                BaseButton.btn(
                  color: AppColors.primaryColor,
                  onTap: () {
                    Get.back();
                  },
                  label: 'Save Now',
                  styleText: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
