import 'package:employees_app/common/widget/button.dart';
import 'package:employees_app/features/profile/view/widget/hero_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/custom_app_bar.dart';
import '../../../../core/theme/app_color.dart';
import '../../logic/contrller/profile_controller.dart';

// ignore: must_be_immutable
class PersonalInformationScrean extends StatelessWidget {
  PersonalInformationScrean({super.key});

  ProfileController controller = Get.put(ProfileController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "معلومات الحساب",
        onTap: () {
          Get.back();
        },
      ),
      body: Column(
        children: [
          HeroSection(),
          buildUserInfoRow(context, "الاسم", controller.controllerName),
          buildUserInfoRow(
              context, "البريد الإلكتروني", controller.controllerEmail)
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 130, right: 40, left: 40),
        child: Button(onTap: () {}, title: "حفظ"),
      ),
    );
  }
}

Widget buildUserInfoRow(
    BuildContext context, String name, TextEditingController? controller) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: Text(
            name,
            style: const TextStyle(fontSize: 18, color: AppColors.onPrimary2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 45,
            child: TextField(
              textAlign: TextAlign.end,

              ///  onChanged: onChange,
              controller: controller,
              decoration: InputDecoration(
                // labelText: lableText,
                filled: true,
                //  suffixIcon: icon,
                fillColor: Get.isDarkMode ? AppColors.mainColor : Colors.white,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                  borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(
                          85, 32, 30, 30)),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
