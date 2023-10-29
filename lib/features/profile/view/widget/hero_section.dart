import 'package:employees_app/features/profile/logic/contrller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/users_moder.dart';

// ignore: must_be_immutable
class HeroSection extends StatelessWidget {
  HeroSection({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    UsersModel? user;
    if (!controller.isLoding && controller.userList.isNotEmpty) {
      user = controller.userList[0];
    }
    return Container(
      height: Get.height * 0.35,
      width: Get.width,
      decoration: boxDecoration(),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: Get.height * 0.03),
          buildUserInfoRow(context, controller.isLoding ? " " : user!.name),
          SizedBox(height: Get.height * 0.03),
          buildDataRow(context, controller.isLoding ? " " : user!.jobNumber,
              "الرقم الوظيفي"),
          SizedBox(height: Get.height * 0.02),
          buildDataRow(context, controller.isLoding ? " " : user!.jobTitle,
              "المسمى الوظيفي"),
          SizedBox(height: Get.height * 0.02),
          buildDataRow(context, controller.isLoding ? " " : user!.employer,
              "جهة التوظيف"),
        ],
      ),
    );
  }

  Widget buildUserInfoRow(BuildContext context, String name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/6997662.png'),
          ),
        ),
        SizedBox(height: Get.height * 0.01),
        Text(
          name,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }

  Widget buildDataRow(BuildContext context, String text, String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white)),
        Text(
          " : $label",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    );
  }
}

Decoration boxDecoration() => const BoxDecoration(
      color: Color(0xff0096c7),
      borderRadius: BorderRadius.horizontal(
          left: Radius.circular(25), right: Radius.circular(25)),
      boxShadow: [
        BoxShadow(
          blurRadius: 5,
          offset: Offset(0, 0.01),
        ),
      ],
    );
