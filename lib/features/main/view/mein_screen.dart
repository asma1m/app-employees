import 'package:employees_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/view/widget/button.dart';
import '../logic/controller/main_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final MainController mainController =
      Get.put(MainController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<MainController>(
      // Wrap with GetBuilder
      builder: (controller) {
        return IndexedStack(
          index: controller.slectedIndex,
          children: controller.widgetOptions,
        );
      },
    ), bottomNavigationBar:
        GetBuilder<MainController>(builder: (mainController) {
      return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: selectedIcon(icon: const Icon(Icons.person_outline)),
            icon: const Icon(Icons.person_outline),
            label: "الملف الشخصي",
          ),
          BottomNavigationBarItem(
            activeIcon: selectedIcon(icon: const Icon(Icons.note_alt_outlined)),
            icon: const Icon(Icons.note_alt_outlined),
            label: "صفحتي",
          ),
          BottomNavigationBarItem(
            activeIcon: selectedIcon(
              icon: const Icon(Icons.home_outlined),
            ),
            icon: const Icon(Icons.home_outlined),
            label: "غرفة الإجتماعات",
          ),
        ],
        currentIndex: mainController.slectedIndex, // Corrected typo here
        onTap: (int index) {
          print(index);
          mainController.onItemTapped(index); // Call the correct function
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 116, 113, 113),
      );
    }));
  }
}

Widget selectedIcon({required Icon icon}) {
  return Container(
    width: 60,
    height: 35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: Get.isDarkMode
          ? AppColors.backgroundColorDark
          : AppColors.backgroundColorlight,
    ),
    child: icon,
  );
}
