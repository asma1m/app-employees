import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/theme/app_color.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.25,
      width: Get.width * 0.95,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Get.isDarkMode
              ? Color.fromARGB(108, 198, 175, 224)
              : Colors.white,
        ),
        gradient: Get.isDarkMode
            ? AppColors.backgroundColorDark
            : AppColors.backgroundColorlight,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          buildUserInfoRow(context),
          SizedBox(height: Get.height * 0.01),
          buildDataRow(context, "57839", "الرقم الوظيفي"),
          SizedBox(height: Get.height * 0.02),
          buildDataRow(context, "مهندس برمجيات", "المسمى الوظيفي"),
          SizedBox(height: Get.height * 0.02),
          buildDataRow(context, "SAFCSP", "جهة التوظيف"),
        ],
      ),
    );
  }

  Widget buildUserInfoRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "سارا محمد",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: Get.width * 0.02),
        const Padding(
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/6997662.png'),
          ),
        ),
      ],
    );
  }

  Widget buildDataRow(BuildContext context, String text, String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text, style: Theme.of(context).textTheme.bodyMedium!),
        Text(
          " : $label",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
