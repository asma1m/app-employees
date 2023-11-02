import 'package:employees_app/common/widget/custom_app_bar.dart';
import 'package:employees_app/core/routes/routes.dart';
import 'package:employees_app/features/profile/view/widget/settings_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "الملف الشخصي",
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.05),
            InkWell(
              onTap: () => Get.toNamed(Routs.personalInformationScrean),
              child: Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "سارا محمد",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "sara@gmail.com",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/robot.png")),
                        color: const Color(0xffC4C4C4),
                        border: Border.all(color: Colors.white, width: 4),
                        borderRadius: BorderRadius.circular(70)),
                  ),
                  const SizedBox(width: 15)
                ]),
              ),
            ),
            SizedBox(height: Get.height * 0.01),
            profileList(
                title: const Text(
                  "الدعوات",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                icon: const Icon(Icons.notifications),
                isLogout: false,
                onTap: () {
                  Get.toNamed(Routs.allInvitationsScrean);
                }),
            SizedBox(height: Get.height * 0.01),
            const Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 160, left: 120),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => LogoutDialogWidget(),
                  );
                },
                child: const Row(children: [
                  Text(
                    "تسجيل الخروج",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.logout,
                    size: 20,
                    color: Colors.red,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

LinearGradient buttonColor() => const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromARGB(108, 34, 0, 255),
        Color.fromARGB(108, 198, 175, 224),
      ],
      // stops: [0.3, 0.5],
    );

Widget profileList(
        {required Widget title,
        required Icon icon,
        required Function() onTap,
        required bool isLogout}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: onTap,
        child: ListTile(
          trailing: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                color: const Color(0xffD9D9D9)),
            child: Center(
              child: icon,
            ),
          ),
          titleAlignment: ListTileTitleAlignment.threeLine,
          title: Container(
              alignment: Alignment.centerRight,
              width: Get.width * 0.5,
              child: title),
          leading: isLogout ? null : Icon(Icons.arrow_back_ios),
        ),
      ),
    );
