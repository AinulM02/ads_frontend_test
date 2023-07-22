import 'package:flutter/material.dart';

import '../themes/app_color.dart';

class ButtonArrowWidget extends StatelessWidget {
  const ButtonArrowWidget({
    super.key,
    this.onTap,
    this.width,
    this.height,
    this.color,
    this.padding,
    this.iconPrefix,
    this.label,
    this.styleText,
    this.iconSufix,
  });

  final Function()? onTap;
  final double? width;
  final double? height;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final Widget? iconPrefix;
  final Widget? iconSufix;
  final String? label;
  final TextStyle? styleText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: AppColors.transparant,
      highlightColor: AppColors.transparant,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                iconPrefix ?? const SizedBox(),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  label ?? '',
                  style: styleText,
                ),
              ],
            ),
            iconSufix ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
