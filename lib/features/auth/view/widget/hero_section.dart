import 'package:employees_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 2.4,
      width: Get.width,
      decoration: BoxDecoration(
          gradient: AppColors.heroSectionColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100))),
      child: Center(
        child: Image.asset("assets/images/Layer_1.png"),
      ),
    );
  }
}
