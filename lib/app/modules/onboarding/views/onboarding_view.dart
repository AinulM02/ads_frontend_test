import 'package:ads_frontend_test/app/routes/app_pages.dart';
import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/utils/icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              itemCount: controller.images.length,
              onPageChanged: (value) {
                controller.selectedIndex.value = value;
              },
              itemBuilder: (context, index) {
                return AppIcons.png(
                  controller.images[index],
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ValueListenableBuilder(
                valueListenable: controller.selectedIndex,
                builder: (context, index, child) {
                  return InkWell(
                    onTap: () {
                      if (index == controller.images.length - 1) {
                        Get.offAllNamed(Routes.LOGIN);
                      }
                      final nextPage = controller.selectedIndex.value + 1;
                      controller.pageController.animateToPage(
                        nextPage,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white,
                      ),
                      child: Center(
                        child: Text(
                          index == controller.images.length - 1
                              ? "Get Started"
                              : "Next",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned.fill(
            bottom: -550,
            child: Align(
              alignment: Alignment.center,
              child: ValueListenableBuilder(
                valueListenable: controller.selectedIndex,
                builder: (context, index, child) {
                  return Wrap(
                    spacing: 5,
                    children: List.generate(
                      controller.images.length,
                      (indexIndicator) {
                        return AnimatedContainer(
                          duration: Duration(microseconds: 200),
                          height: 8,
                          width: indexIndicator == index ? 25 : 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: indexIndicator == index
                                ? AppColors.white
                                : AppColors.white.withOpacity(0.5),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned.fill(
            bottom: 180,
            child: Align(
              alignment: Alignment.center,
              child: ValueListenableBuilder(
                valueListenable: controller.selectedIndex,
                builder: (context, index, child) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          controller.title[index],
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(color: AppColors.white),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            controller.desc[index],
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: AppColors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
