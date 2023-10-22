import "package:employees_app/core/theme/text_theme.dart";
import "package:flutter/material.dart";
import "app_color.dart";

ThemeData darkThemeData() {
  return ThemeData(
    cardColor: darkGreyColor, // Background color for cards in dark theme
    highlightColor: darkColor, // Color for highlighting elements
    dividerColor: lightColor, // Color for dividers
    focusColor: mainColor, // Color for focus elements
    hintColor: darkColor, // Color for hints
    hoverColor: darkGreyColor, // Color for hover effects
    indicatorColor: lightColor, // Color for indicators
    brightness: Brightness.dark, // Set theme brightness to dark
    scaffoldBackgroundColor:
        darkColor, // Background color for the scaffold in dark theme
    textTheme:
        CustomTextTheme.textThemeDark, // Custom text theme for dark theme
    drawerTheme: const DrawerThemeData(
      backgroundColor:
          darkGreyColor, // Background color for drawers in dark theme
      scrimColor: lightColor, // Color for drawer scrim
    ),
    iconTheme: const IconThemeData(color: mainColor),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: mainColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      ),
      backgroundColor: darkColor, // Background color for app bar in dark theme
      iconTheme: IconThemeData(color: mainColor, size: 30),
      elevation: 0.0,
      shadowColor: lightColor, // Color for app bar shadow in dark theme
      centerTitle: true,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor:
          darkGreyColor, // Background color for bottom navigation bar in dark theme
      elevation: 5.0,
      selectedItemColor: mainColor,
      unselectedItemColor:
          greyColor, // Color for unselected items in dark theme
    ),
    dialogTheme: const DialogTheme(
      backgroundColor:
          darkGreyColor, // Background color for dialogs in dark theme
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
        color: whiteColor, // Text color for content in dialogs in dark theme
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
        minimumSize: const Size(382, 41), // Minimum button size
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 0.4,
        backgroundColor: whiteColor, // Button background color in dark theme
      ),
    ),
  );
}
