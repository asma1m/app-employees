import 'package:employees_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/const/box_decration.dart';
import '../../../core/routes/routes.dart';
import '../logic/controller/main_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final MainController mainController =
      Get.put(MainController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 3000), () {
      moveToMainPage(context);
    });
    Future.delayed(const Duration(milliseconds: 2000), () {
      mainController.setIsLoding(true);
    });
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: GlobalBoxDecration.boxDecoration(context),
        child: GetBuilder<MainController>(
          builder: (controller) => Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: !mainController.isLoding
                ? Image.asset("assets/images/logo-dark.png")
                : const SizedBox(
                    height: 30, width: 30, child: CircularProgressIndicator()),
          )),
        ),
      ),
    );
  }
}

moveToMainPage(BuildContext context) {
  Get.offAllNamed(Routs.onboarding);
}
