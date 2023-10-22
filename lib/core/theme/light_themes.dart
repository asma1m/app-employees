import 'package:employees_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';

ThemeData lightThemeData() {
  return ThemeData(
    cardColor: whiteColor,
    highlightColor: greyLightColor,
    dividerColor: darkColor,
    focusColor: mainColor,
    hintColor: lightColor,
    hoverColor: darkGreyColor,
    indicatorColor: lightColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkColor,
    textTheme: CustomTextTheme.textThemeLight,
    drawerTheme: const DrawerThemeData(
      backgroundColor: whiteColor,
      scrimColor: greyColor,
    ),
    iconTheme: const IconThemeData(color: mainColor),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: mainColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      ),
      backgroundColor: whiteColor,
      iconTheme: IconThemeData(color: mainColor, size: 30),
      elevation: 0.0,
      shadowColor: greyColor,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: whiteColor,
      elevation: 5.0,
      selectedItemColor: mainColor,
      unselectedItemColor: greyColor,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: whiteColor,
      elevation: 0.0,
      alignment: Alignment.center,
      iconColor: mainColor,
      titleTextStyle: TextStyle(
        color: mainColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      ),
      contentTextStyle: TextStyle(
        color: blackColor,
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
      backgroundColor: blackColor,
    )),
  );
}
