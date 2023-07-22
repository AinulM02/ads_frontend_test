import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/utils/icons.dart';
import 'package:ads_frontend_test/app/widgets/button_circle.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key, required this.icon});

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 2, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                "Best Seller",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: AppColors.primaryColor),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Nike Jordan",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: AppColors.grey),
                ),
              ),
              Text(
                "RP 302.000",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Positioned(
            child: AppIcons.svg(
              'ic-love',
              color: Colors.grey,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 5,
            child: ButtonCircleWidget(
              color: AppColors.primaryColor,
              icon: Padding(
                padding: const EdgeInsets.all(3),
                child: AppIcons.svg(
                  'ic-add',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
