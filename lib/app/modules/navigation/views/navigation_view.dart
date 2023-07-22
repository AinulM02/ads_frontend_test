import 'package:ads_frontend_test/app/modules/home/views/home_view.dart';
import 'package:ads_frontend_test/app/modules/likes/views/likes_view.dart';
import 'package:ads_frontend_test/app/modules/notifications/views/notifications_view.dart';
import 'package:ads_frontend_test/app/modules/profile/views/profile_view.dart';
import 'package:ads_frontend_test/app/routes/app_pages.dart';
import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/icons.dart';
import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<NavigationController>(
        builder: (controller) {
          return IndexedStack(
            index: controller.tabIndex,
            children: const [
              HomeView(),
              LikesView(),
              NotificationsView(),
              ProfileView(),
            ],
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
        child: FloatingActionButton(
          splashColor: AppColors.transparant,
          enableFeedback: false,
          child: AppIcons.svg('ic-cart'),
          onPressed: () {
            Get.toNamed(Routes.CART);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: AppColors.white,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GetBuilder<NavigationController>(
            init: NavigationController(),
            builder: (controller) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      splashColor: AppColors.transparant,
                      highlightColor: AppColors.transparant,
                      enableFeedback: false,
                      onTap: () {
                        controller.changeTabIndex(0);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: AppIcons.svg(
                          'ic-home',
                          fit: BoxFit.none,
                          color: controller.tabIndex == 0
                              ? AppColors.primaryColor
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      splashColor: AppColors.transparant,
                      highlightColor: AppColors.transparant,
                      enableFeedback: false,
                      onTap: () {
                        controller.changeTabIndex(1);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: AppIcons.svg(
                          'ic-love',
                          fit: BoxFit.none,
                          color: controller.tabIndex == 1
                              ? AppColors.primaryColor
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Expanded(
                    child: InkWell(
                      splashColor: AppColors.transparant,
                      highlightColor: AppColors.transparant,
                      enableFeedback: false,
                      onTap: () {
                        controller.changeTabIndex(2);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: AppIcons.svg(
                          'ic-notif',
                          fit: BoxFit.none,
                          color: controller.tabIndex == 2
                              ? AppColors.primaryColor
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      splashColor: AppColors.transparant,
                      highlightColor: AppColors.transparant,
                      enableFeedback: false,
                      onTap: () {
                        controller.changeTabIndex(3);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: AppIcons.svg(
                          'ic-user',
                          fit: BoxFit.none,
                          color: controller.tabIndex == 3
                              ? AppColors.primaryColor
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
