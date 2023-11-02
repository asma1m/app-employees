import 'package:employees_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../logic/controller/main_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final MainController mainController =
      Get.put(MainController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<MainController>(
      builder: (controller) => Stack(
        children: [
          controller.widgetOptions[controller.slectedIndex],
          Positioned(
            top: Get.height * 0.85,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 80,
                width: Get.width * 0.9,
                decoration: const BoxDecoration(
                    color: AppColors.onPrimary2,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: selectedIcon(),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

Widget selectedIcon() {
  final MainController mainController =
      Get.put(MainController(), permanent: true);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      IconButton(
        onPressed: () {
          mainController.onItemTapped(0);
        },
        icon: const ImageIcon(AssetImage("assets/images/User.png")),
        iconSize: 30,
        color: mainController.slectedIndex == 0
            ? Colors.white
            : AppColors.onPrimary,
      ),
      IconButton(
        onPressed: () {
          mainController.onItemTapped(1);
        },
        icon: const ImageIcon(AssetImage("assets/images/Desk.png")),
        iconSize: 30,
        color: mainController.slectedIndex == 1
            ? Colors.white
            : AppColors.onPrimary,
      ),
      IconButton(
        onPressed: () {
          mainController.onItemTapped(2);
        },
        icon: const ImageIcon(AssetImage("assets/images/time.png")),
        iconSize: 27,
        color: mainController.slectedIndex == 2
            ? Colors.white
            : AppColors.onPrimary,
      ),
      IconButton(
        onPressed: () {
          mainController.onItemTapped(3);
        },
        icon: const ImageIcon(AssetImage("assets/images/booking.png")),
        iconSize: 30,
        color: mainController.slectedIndex == 3
            ? Colors.white
            : AppColors.onPrimary,
      ),
    ],
  );
}
