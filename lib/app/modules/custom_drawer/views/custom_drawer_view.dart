import 'package:ads_frontend_test/app/routes/app_pages.dart';
import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/utils/icons.dart';
import 'package:ads_frontend_test/app/widgets/button_arrow.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/custom_drawer_controller.dart';

class CustomDrawerView extends GetView<CustomDrawerController> {
  const CustomDrawerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                top: 80,
                bottom: 20,
                right: -100,
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(-15 / 360),
                  child: Opacity(
                    opacity: 0.08,
                    child: AppIcons.png('img-back-drawer'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 10),
                      child: AppIcons.png(
                        'img-person',
                        fit: BoxFit.contain,
                        width: 100,
                      ),
                    ),
                    Text(
                      'Your name',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ButtonArrowWidget(
                        onTap: () {},
                        iconSufix: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: AppIcons.svg('ic-arrow-forward'),
                        ),
                        iconPrefix:
                            AppIcons.svg('ic-user', color: Colors.white),
                        label: 'Profile',
                        styleText: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ButtonArrowWidget(
                        onTap: () {
                          Get.offNamed(Routes.CART);
                        },
                        iconSufix: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: AppIcons.svg('ic-arrow-forward'),
                        ),
                        iconPrefix: AppIcons.svg('ic-cart'),
                        label: 'My Cart',
                        styleText: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ButtonArrowWidget(
                        onTap: () {},
                        iconSufix: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: AppIcons.svg('ic-arrow-forward'),
                        ),
                        iconPrefix:
                            AppIcons.svg('ic-love', color: Colors.white),
                        label: 'Favorite',
                        styleText: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ButtonArrowWidget(
                        onTap: () {},
                        iconSufix: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: AppIcons.svg('ic-arrow-forward'),
                        ),
                        iconPrefix: AppIcons.svg('ic-orders'),
                        label: 'Orders',
                        styleText: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ButtonArrowWidget(
                        onTap: () {},
                        iconSufix: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: AppIcons.svg('ic-arrow-forward'),
                        ),
                        iconPrefix:
                            AppIcons.svg('ic-notif', color: Colors.white),
                        label: 'Notifications',
                        styleText: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ButtonArrowWidget(
                        onTap: () {},
                        iconSufix: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: AppIcons.svg('ic-arrow-forward'),
                        ),
                        iconPrefix: AppIcons.svg('ic-settings'),
                        label: 'Settings',
                        styleText: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ButtonArrowWidget(
                        onTap: () {
                          Get.offAllNamed(Routes.LOGIN);
                        },
                        iconPrefix: AppIcons.svg('ic-sign-out'),
                        label: 'Sing Out',
                        styleText: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
