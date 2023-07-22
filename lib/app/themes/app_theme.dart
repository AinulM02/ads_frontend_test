import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:ads_frontend_test/app/themes/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static final AppTextStyle textStyle = AppTextStyle.instance;

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    dialogBackgroundColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.white,
    primarySwatch: AppColors.primarySwatchColor,
    textTheme: TextTheme(
      bodyLarge: textStyle.bodyLarge,
      bodyMedium: textStyle.bodyMedium,
      bodySmall: textStyle.bodySmall,
      displayLarge: textStyle.displayLarge,
      displayMedium: textStyle.displayMedium,
      displaySmall: textStyle.displaySmall,
      headlineLarge: textStyle.headLineLarge,
      headlineMedium: textStyle.headLineMedium,
      headlineSmall: textStyle.headLineSmall,
      titleLarge: textStyle.titleLarge,
      titleMedium: textStyle.titleMedium,
      titleSmall: textStyle.titleSmall,
      labelLarge: textStyle.labelLarge,
      labelMedium: textStyle.labelMedium,
      labelSmall: textStyle.labelSmall,
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      actionsIconTheme: IconThemeData(
        color: AppColors.black,
      ),
    ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    dialogBackgroundColor: AppColors.black,
    scaffoldBackgroundColor: AppColors.black,
    primarySwatch: AppColors.primarySwatchColor,
    textTheme: TextTheme(
      bodyLarge: textStyle.bodyLarge.copyWith(color: AppColors.white),
      bodyMedium: textStyle.bodyMedium.copyWith(color: AppColors.white),
      bodySmall: textStyle.bodySmall.copyWith(color: AppColors.white),
      displayLarge: textStyle.displayLarge.copyWith(color: AppColors.white),
      displayMedium: textStyle.displayMedium.copyWith(color: AppColors.white),
      displaySmall: textStyle.displaySmall.copyWith(color: AppColors.white),
      headlineLarge: textStyle.headLineLarge.copyWith(color: AppColors.white),
      headlineMedium: textStyle.headLineMedium.copyWith(color: AppColors.white),
      headlineSmall: textStyle.headLineSmall.copyWith(color: AppColors.white),
      titleLarge: textStyle.titleLarge.copyWith(color: AppColors.white),
      titleMedium: textStyle.titleMedium.copyWith(color: AppColors.white),
      titleSmall: textStyle.titleSmall.copyWith(color: AppColors.white),
      labelLarge: textStyle.labelLarge.copyWith(color: AppColors.white),
      labelMedium: textStyle.labelMedium.copyWith(color: AppColors.white),
      labelSmall: textStyle.labelSmall.copyWith(color: AppColors.white),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      actionsIconTheme: IconThemeData(
        color: AppColors.white,
      ),
    ),
  );
}
