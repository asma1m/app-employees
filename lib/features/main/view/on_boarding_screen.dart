import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widget/button.dart';
import '../../../core/const/box_decration.dart';
import '../../../core/routes/routes.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: GlobalBoxDecration.boxDecoration(context),
        child: Center(child: Image.asset("assets/images/Layer_1.png")),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 5, bottom: 100),
        child: Button(
          title: "ابدأ",
          onTap: () {
            Get.offAllNamed(Routs.loginScreen);
          },
        ),
      ),
    );
  }
}
