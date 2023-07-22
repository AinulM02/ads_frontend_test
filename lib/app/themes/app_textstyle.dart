import 'package:ads_frontend_test/app/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static AppTextStyle instance = AppTextStyle();

  TextStyle displayLarge = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 57,
    fontWeight: FontWeight.bold,
  );
  TextStyle displayMedium = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 45,
    fontWeight: FontWeight.bold,
  );
  TextStyle displaySmall = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  TextStyle headLineLarge = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  TextStyle headLineMedium = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
  TextStyle headLineSmall = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  TextStyle titleLarge = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
  TextStyle titleMedium = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  TextStyle titleSmall = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  TextStyle labelLarge = GoogleFonts.raleway(
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  TextStyle labelMedium = GoogleFonts.raleway(
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  TextStyle labelSmall = GoogleFonts.raleway(
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  TextStyle bodyLarge = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  TextStyle bodyMedium = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  TextStyle bodySmall = GoogleFonts.raleway(
    color: AppColors.black,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
}
