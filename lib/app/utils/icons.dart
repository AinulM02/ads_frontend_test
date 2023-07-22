import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  AppIcons(String s);

  static SvgPicture svg(
    String icon, {
    Color? color,
    ColorFilter? colorFilter,
    BoxFit? fit,
    double? width,
    double? height,
  }) {
    return SvgPicture.asset(
      'assets/icons/$icon.svg',
      colorFilter: color != null
          ? ColorFilter.mode(color, BlendMode.srcIn)
          : colorFilter,
      width: width,
      height: height,
      fit: fit ?? BoxFit.fill,
    );
  }

  static Image png(
    String icon, {
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.asset(
      'assets/images/$icon.png',
      height: height,
      width: width,
      fit: fit ?? BoxFit.fill,
    );
  }
}
