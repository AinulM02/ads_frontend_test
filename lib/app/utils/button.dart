import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/utils/icons.dart';
import 'package:flutter/material.dart';

class BaseButton {
  BaseButton();

  static InkWell btn({
    String? label,
    double? width,
    double? height,
    Color? color,
    Function()? onTap,
    EdgeInsetsGeometry? padding,
    TextStyle? styleText,
    Widget? icon,
  }) {
    return InkWell(
      onTap: onTap,
      splashColor: AppColors.transparant,
      highlightColor: AppColors.transparant,
      child: Container(
        width: width,
        height: height,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            Text(
              label ?? '',
              style: styleText,
            ),
          ],
        ),
      ),
    );
  }
}
