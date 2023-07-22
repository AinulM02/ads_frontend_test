import 'package:ads_frontend_test/app/routes/app_pages.dart';
import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/utils/appbar.dart';
import 'package:ads_frontend_test/app/utils/button.dart';
import 'package:ads_frontend_test/app/utils/icons.dart';
import 'package:ads_frontend_test/app/widgets/button_circle.dart';
import 'package:ads_frontend_test/app/widgets/card_product.dart';
import 'package:ads_frontend_test/app/widgets/search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.appBar(
        title: 'Explore',
        styleText: Theme.of(context).textTheme.headlineMedium,
        leading: InkWell(
          splashColor: AppColors.transparant,
          highlightColor: AppColors.transparant,
          enableFeedback: false,
          onTap: () {
            Get.toNamed(Routes.CUSTOM_DRAWER);
          },
          child: AppIcons.svg(
            'ic-more',
            fit: BoxFit.none,
          ),
        ),
        action: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Get.toNamed(Routes.CART);
              },
              child: Stack(
                children: [
                  ButtonCircleWidget(
                    icon: AppIcons.svg(
                      'ic-cart',
                      color: AppColors.black,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 10,
                        height: 10,
                        padding: EdgeInsets.all(10),
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SearchWidget(
                          hintText: 'Looking for shoes',
                          prefix: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppIcons.svg(
                              'ic-search',
                              fit: BoxFit.contain,
                            ),
                          ),
                          inputController: controller.searchTextController,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ButtonCircleWidget(
                          padding: const EdgeInsets.all(10),
                          color: AppColors.primaryColor,
                          icon: AppIcons.svg('ic-filter'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Select Category',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    BaseButton.btn(
                      label: 'All Shoe',
                      styleText: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white),
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      color: AppColors.primaryColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    BaseButton.btn(
                      label: 'Outdoor',
                      styleText: Theme.of(context).textTheme.titleSmall,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    BaseButton.btn(
                      label: 'Tennis',
                      styleText: Theme.of(context).textTheme.titleSmall,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    BaseButton.btn(
                      label: 'Indoor',
                      styleText: Theme.of(context).textTheme.titleSmall,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Shoes',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      'See all',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: AppColors.primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.PRODUCTS);
                      },
                      child: CardProduct(
                        icon: AppIcons.png(
                          'img-shoe-card-1',
                          width: 150,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.PRODUCTS);
                      },
                      child: CardProduct(
                        icon: AppIcons.png(
                          'img-shoe-card-2',
                          width: 150,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.PRODUCTS);
                      },
                      child: CardProduct(
                        icon: AppIcons.png(
                          'img-shoe-card-1',
                          width: 150,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.PRODUCTS);
                      },
                      child: CardProduct(
                        icon: AppIcons.png(
                          'img-shoe-card-2',
                          width: 150,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Arrivals',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      'See all',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: AppColors.primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 140,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(top: 10, left: 20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    AppIcons.png(
                      'img-event-1',
                      fit: BoxFit.contain,
                    ),
                    AppIcons.png(
                      'img-event-1',
                      fit: BoxFit.contain,
                    ),
                    AppIcons.png(
                      'img-event-1',
                      fit: BoxFit.contain,
                    ),
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
