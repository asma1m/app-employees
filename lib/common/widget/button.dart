import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/app_color.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  const Button({super.key, required this.onTap, required this.title});
  final Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Get.width * 0.9,
        height: Get.height * 0.06,
        decoration: BoxDecoration(
          color: AppColors.onPrimary2,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                color: AppColors.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Tajawal"),
          ),
        ),
      ),
    );
  }
}
