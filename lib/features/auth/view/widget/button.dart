import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_color.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  const Button({super.key, required this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Get.width * 0.8,
        height: Get.height * 0.06,
        decoration: BoxDecoration(
          gradient: buttonColor(),
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
                color: whiteColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

LinearGradient buttonColor() => const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromARGB(108, 119, 0, 255),
        Color.fromARGB(108, 198, 175, 224),
      ],
      // stops: [0.3, 0.5],
    );
