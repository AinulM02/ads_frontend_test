import 'package:ads_frontend_test/app/routes/app_pages.dart';
import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/utils/appbar.dart';
import 'package:ads_frontend_test/app/utils/icons.dart';
import 'package:ads_frontend_test/app/widgets/text_field_form.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                  child: AppIcons.png(
                    'img-person',
                    fit: BoxFit.contain,
                    width: 100,
                  ),
                ),
                Text(
                  'Your Name',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.EDITPROFILE);
                  },
                  child: Text(
                    'Change Profile',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppColors.primaryColor),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  label: 'Name',
                  enabled: false,
                  hintText: 'Your Name',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.grey),
                ),
                TextFormFieldWidget(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  label: 'Email',
                  enabled: false,
                  hintText: 'Your Email',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.grey),
                ),
                TextFormFieldWidget(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  label: 'Mobile Number',
                  enabled: false,
                  hintText: 'Your Mobile Number',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.grey),
                ),
                TextFormFieldWidget(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  label: 'Location',
                  enabled: false,
                  hintText: 'Sidoarjo, Indonesia',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
