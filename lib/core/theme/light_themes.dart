import 'package:employees_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';

ThemeData lightThemeData() {
  return ThemeData(
    fontFamily: 'Tajawal',
    cardColor: AppColors.whiteColor,
    highlightColor: AppColors.greyLightColor,
    dividerColor: AppColors.darkColor,
    focusColor: AppColors.lightColor,
    hintColor: AppColors.blackColor,
    indicatorColor: AppColors.lightColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightColor,
    textTheme: CustomTextTheme.textThemeLight,
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.whiteColor,
      scrimColor: AppColors.greyColor,
    ),
    iconTheme: const IconThemeData(color: AppColors.mainColor),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: AppColors.mainColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      ),
      backgroundColor: AppColors.whiteColor,
      iconTheme: IconThemeData(color: AppColors.mainColor, size: 30),
      elevation: 0.0,
      shadowColor: AppColors.greyColor,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.whiteColor,
      elevation: 5.0,
      selectedItemColor: AppColors.mainColor,
      unselectedItemColor: AppColors.greyColor,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: AppColors.whiteColor,
      elevation: 0.0,
      alignment: Alignment.center,
      iconColor: AppColors.mainColor,
      titleTextStyle: TextStyle(
        color: AppColors.mainColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      ),
      contentTextStyle: TextStyle(
        color: AppColors.blackColor,
        fontSize: 18,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.0,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(5),
      )),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      minimumSize: const Size(382, 41),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 0.4,
      backgroundColor: AppColors.blackColor,
    )),
  );
}
