import 'package:employees_app/core/theme/app_color.dart';
import 'package:employees_app/features/profile/logic/contrller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/users_moder.dart';

// ignore: must_be_immutable
class HeroSection extends StatelessWidget {
  HeroSection({Key? key}) : super(key: key);

  // ProfileController controller = Get.put(ProfileController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    UsersModel? user;
    // if (!controller.isLoding && controller.userList.isNotEmpty) {
    //   user = controller.userList[0];
    // }
    return Container(
      height: Get.height * 0.25,
      width: Get.width,
      child: Stack(alignment: Alignment.topCenter, children: [
        Container(
          height: Get.height * 0.15,
          width: Get.width,
          color: AppColors.onPrimary2,
        ),
        Positioned(
          top: 60,
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/robot.png")),
                color: const Color(0xffC4C4C4),
                border: Border.all(color: Colors.white, width: 4),
                borderRadius: BorderRadius.circular(70)),
          ),
        ),
        Positioned(
          top: 160,
          right: 150,
          child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 255, 217, 0)),
              child: const Icon(Icons.add)),
        )
      ]),
    );
  }
}
