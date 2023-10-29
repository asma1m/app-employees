import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.3,
      width: Get.width * 0.5,
    );
  }
}
