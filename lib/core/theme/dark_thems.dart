import "package:employees_app/core/theme/text_theme.dart";
import "package:flutter/material.dart";
import "app_color.dart";

ThemeData darkThemeData() {
  return ThemeData(
    fontFamily: 'Tajawal',
    cardColor: AppColors.darkGreyColor,
    highlightColor: AppColors.darkColor,
    dividerColor: AppColors.lightColor,
    focusColor: AppColors.mainColor,
    hintColor: AppColors.darkColor,
    hoverColor: AppColors.darkGreyColor,
    indicatorColor: AppColors.lightColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkColor,
    textTheme: CustomTextTheme.textThemeDark,
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.darkGreyColor,
      scrimColor: AppColors.lightColor,
    ),
    iconTheme: const IconThemeData(color: AppColors.mainColor),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      ),
      backgroundColor: AppColors.darkColor,
      iconTheme: IconThemeData(color: AppColors.mainColor, size: 30),
      elevation: 0.0,
      shadowColor: AppColors.lightColor,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkGreyColor,
      elevation: 5.0,
      selectedItemColor: AppColors.mainColor,
      unselectedItemColor: AppColors.greyColor,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: AppColors.darkGreyColor,
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
        color: AppColors.whiteColor,
        fontSize: 18,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(382, 41),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 0.4,
        backgroundColor: AppColors.whiteColor,
      ),
    ),
  );
}
