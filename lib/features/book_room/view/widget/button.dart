import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_color.dart';

class BouttonBooking2 extends StatelessWidget {
  const BouttonBooking2({super.key, required this.title, this.onTap});
  final Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.055,
        width: Get.width * 0.7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
                colors: [AppColors.onPrimary2, AppColors.onPrimary])),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        )),
      ),
    );
  }
}
