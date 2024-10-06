import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.accentColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
