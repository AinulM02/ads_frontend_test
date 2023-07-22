import 'package:ads_frontend_test/app/utils/button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../themes/app_color.dart';
import '../../../utils/appbar.dart';
import '../../../utils/icons.dart';
import '../../../widgets/button_circle.dart';
import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  const ProductsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.appBar(
        title: 'Sneaker Shop',
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
        action: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
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
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Nike Air Max 270 Essential',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Men’s Shoes',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Rp 799.900',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(
                      height: 130,
                    ),
                    AppIcons.svg(
                      'img-bottom-slider',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          ButtonCircleWidget(
                            color: Colors.transparent,
                            icon: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey.shade300,
                                  )
                                ],
                              ),
                              child: AppIcons.png(
                                'img-shoe-0',
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                          ButtonCircleWidget(
                            color: Colors.transparent,
                            icon: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey.shade300,
                                  )
                                ],
                              ),
                              child: AppIcons.png(
                                'img-shoe-1',
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                          ButtonCircleWidget(
                            color: Colors.transparent,
                            icon: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey.shade300,
                                  )
                                ],
                              ),
                              child: AppIcons.png(
                                'img-shoe-2',
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                          ButtonCircleWidget(
                            color: Colors.transparent,
                            icon: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey.shade300,
                                  )
                                ],
                              ),
                              child: AppIcons.png(
                                'img-shoe-3',
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                          ButtonCircleWidget(
                            color: Colors.transparent,
                            icon: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey.shade300,
                                  )
                                ],
                              ),
                              child: AppIcons.png(
                                'img-shoe-4',
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike. The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Read more',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ButtonCircleWidget(
                            icon: Padding(
                              padding: const EdgeInsets.all(10),
                              child: AppIcons.svg('ic-love',
                                  color: AppColors.grey),
                            ),
                          ),
                        ),
                        Expanded(
                          child: BaseButton.btn(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            color: AppColors.primaryColor,
                            onTap: () {},
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: AppIcons.svg('ic-cart'),
                            ),
                            label: 'Add to Cart',
                            styleText: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Positioned(
                  top: 120,
                  left: 30,
                  child: AppIcons.png('img-diplay-product'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
