import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color(0xFF0D6EFD);
  static Color secondaryColor = const Color(0xFF1483C2);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF2B2B2B);
  static Color grey = const Color(0xFF707B81);
  static Color transparant = Colors.transparent;

  static MaterialColor primarySwatchColor = const MaterialColor(
    0xFF0D6EFD,
    <int, Color>{
      50: Color(0xFFE3EEFF),
      100: Color(0xFFB8D4FF),
      200: Color(0xFF8AB9FF),
      300: Color(0xFF5C9EFF),
      400: Color(0xFF3593FF),
      500: Color(0xFF0D6EFD), // Warna utama
      600: Color(0xFF0C63E5),
      700: Color(0xFF0A55C8),
      800: Color(0xFF0848AB),
      900: Color(0xFF063891),
    },
  );
}
