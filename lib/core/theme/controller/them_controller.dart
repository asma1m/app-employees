import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController {
  final GetStorage storage = GetStorage();

  saveThemeData(bool isDark) {
    storage.write("isDark", isDark);
  }

  bool getSaveThemeData() {
    return storage.read<bool>("isDark") ?? false;
  }

  ThemeMode get themeDataGet =>
      getSaveThemeData() ? ThemeMode.dark : ThemeMode.light;
  void changedsTheme() {
    Get.changeThemeMode(getSaveThemeData() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!getSaveThemeData());
  }
}
