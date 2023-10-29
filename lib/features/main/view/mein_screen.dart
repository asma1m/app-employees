import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        currentIndex: mainController.slectedIndex,
        onTap: (int index) {
          mainController.onItemTapped(index);
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 116, 113, 113),
      );
    }));
  }
}

Widget selectedIcon({required Icon icon}) {
  return SizedBox(
    width: 60,
    height: 35,
    child: icon,
  );
}
