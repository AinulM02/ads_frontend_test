import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/utils/icons.dart';
import 'package:flutter/material.dart';

class BaseAppBar {
  BaseAppBar();

  static AppBar appBar({
    Widget? leading,
    String? title,
    Color? backgroundColor,
    double? elevation,
    TextStyle? styleText,
    bool? autoLeading,
    List<Widget>? action,
  }) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: elevation ?? 0,
      title: Text(title ?? ''),
      titleTextStyle: styleText,
      automaticallyImplyLeading: autoLeading != null ? true : false,
      leading: leading,
      centerTitle: true,
      leadingWidth: 80,
      actions: action,
    );
  }
}
