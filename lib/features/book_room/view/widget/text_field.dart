import 'package:employees_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFildeBookingRoomWidget extends StatelessWidget {
  const TextFildeBookingRoomWidget(
      {super.key,
      this.onChange,
      this.lableText,
      this.nameTextFilde,
      this.icon,
      required this.controller,
      this.text});
  final TextEditingController controller;
  final String? text;
  final ValueChanged? onChange;
  final String? lableText;
  final String? nameTextFilde;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.height * 0.01),
        Container(
            padding: const EdgeInsets.only(right: 10),
            alignment: Alignment.centerRight,
            child: Text(
              "$text",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: 18,
                    color: Get.isDarkMode
                        ? AppColors.whiteColor
                        : const Color.fromARGB(255, 86, 79, 79),
                  ),
            )),
        SizedBox(height: Get.height * 0.01),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 45,
            child: TextField(
              textAlign: TextAlign.end,
              onChanged: onChange,
              controller: controller,
              decoration: InputDecoration(
                labelText: lableText,
                filled: true,
                suffixIcon: icon,
                fillColor: Get.isDarkMode ? AppColors.mainColor : Colors.white,
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
