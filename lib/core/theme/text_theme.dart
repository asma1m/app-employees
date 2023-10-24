import 'package:flutter/material.dart';

import 'app_color.dart';

class CustomTextTheme {
  static Color textColorLight = AppColors.blackColor;
  static Color textColorDark = AppColors.whiteColor;

  static TextTheme get textThemeLight {
    return textTheme(textColor: textColorLight);
  }

  static TextTheme get textThemeDark {
    return textTheme(textColor: textColorDark);
  }

  static TextTheme textTheme({required Color textColor}) {
    const FontWeight bold = FontWeight.w700;
    const FontWeight medium = FontWeight.w500;
    const FontWeight regular = FontWeight.w400;

    return TextTheme(
      headlineLarge: TextStyle(
        color: textColor,
        fontSize: 24,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      headlineMedium: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: medium,
        letterSpacing: 0.0,
      ),
      headlineSmall: TextStyle(
        color: textColor,
        fontSize: 12,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      displayLarge: const TextStyle(
        color: AppColors.whiteColor,
        fontSize: 24,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      displayMedium: const TextStyle(
        color: AppColors.greyColor,
        fontSize: 16,
        fontWeight: regular,
        decoration: TextDecoration.underline,
        letterSpacing: 0.0,
      ),
      displaySmall: const TextStyle(
        color: Colors.green,
        fontSize: 16,
        fontWeight: regular,
        decoration: TextDecoration.underline,
        letterSpacing: 0.0,
      ),
      bodyLarge: const TextStyle(
        color: AppColors.mainColor,
        fontSize: 20,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      bodyMedium: const TextStyle(
        color: AppColors.mainColor,
        fontSize: 16,
        fontWeight: medium,
        letterSpacing: 0.0,
      ),
      bodySmall: const TextStyle(
        color: AppColors.mainColor,
        fontSize: 12,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      labelLarge: const TextStyle(
        color: AppColors.greyColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      ),
      labelMedium: const TextStyle(
        color: AppColors.greyColor,
        fontSize: 12,
        fontWeight: medium,
        decoration: TextDecoration.underline,
        letterSpacing: 0.0,
      ),
      labelSmall: const TextStyle(
        color: AppColors.greyColor,
        fontSize: 12,
        fontWeight: medium,
        letterSpacing: 0.0,
      ),
    );
  }
}
