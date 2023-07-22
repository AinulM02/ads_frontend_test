import 'package:flutter/material.dart';

import '../utils/icons.dart';

class ButtonCircleWidget extends StatelessWidget {
  const ButtonCircleWidget({
    super.key,
    required this.icon,
    this.width,
    this.color,
    this.onTap,
    this.padding,
    this.border,
  });

  final Widget? icon;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Function()? onTap;
  final BorderRadiusGeometry? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          padding: padding ?? EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: border ?? BorderRadius.circular(100),
            color: color ?? Colors.grey.shade100,
          ),
          child: icon,
        ),
      ),
    );
  }
}
