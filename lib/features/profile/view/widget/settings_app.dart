import 'package:employees_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/controller/them_controller.dart';

class SettingsApp extends StatelessWidget {
  SettingsApp({super.key});

  ThemeController controller = Get.put(ThemeController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<ThemeController>(
          builder: (controller) => ListTitlesCard(
              "تفعيل النمط الداكن",
              Switch.adaptive(
                onChanged: (bool value) {
                  controller.changedsTheme();
                },
                value: Get.isDarkMode ? true : false,
              )),
        ),
        ListTitlesCard("تغيير اللغه", const Icon(Icons.arrow_forward_ios)),
        ListTitlesCard("تسجيل خروج", const Icon(Icons.login_outlined)),
      ],
    );
  }
}

BoxDecoration cardDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    border: Border.all(
      color: Get.isDarkMode
          ? AppColors.lightColor.withOpacity(0.30)
          : AppColors.darkColor.withOpacity(0.08),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget ListTitlesCard(String title, Widget trailing) => Container(
      margin: const EdgeInsets.only(top: 10),
      width: Get.width * 0.95,
      decoration: cardDecoration(),
      child: ListTile(
        title: Text(title),
        trailing: trailing,
      ),
    );
