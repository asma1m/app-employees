
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final GetStorage storage = GetStorage();
  bool isDarkTheme = false;

  saveThemeData(bool isDark) {
    storage.write("isDark", isDark);
  }

  bool getSaveThemeData() {
    return storage.read<bool>("isDark") ?? false;
  }

  ThemeMode get themeDataGet =>
      getSaveThemeData() ? ThemeMode.dark : ThemeMode.light;

  void changedsTheme() {
    bool newThemeState = !getSaveThemeData();
    Get.changeThemeMode(newThemeState ? ThemeMode.dark : ThemeMode.light);
    saveThemeData(newThemeState);
    isDarkTheme = newThemeState;
    update();
  }
}
