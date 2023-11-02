import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/dialoge_widget.dart';
import '../../../../core/theme/controller/them_controller.dart';
import '../../../auth/logic/controller/auth_controller.dart';

class SettingsApp extends StatelessWidget {
  SettingsApp({Key? key}) : super(key: key);

  final ThemeController themeController = Get.put(ThemeController());
  final AuthController authController = Get.put(AuthController());

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => LogoutDialogWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (controller) => Column(
        children: [
          SizedBox(height: Get.height * 0.02),
          ListTitlesCard(
            title: "تفعيل النمط الداكن",
            trailing: Switch.adaptive(
              onChanged: (bool value) {
                controller.changedsTheme();
              },
              value: controller.isDarkTheme,
            ),
          ),
          ListTitlesCard(
            title: "تغيير اللغه",
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTitlesCard(
            title: "تسجيل خروج",
            trailing: const Icon(Icons.login_outlined),
            onTap: () {
              showLogoutDialog(context);
            },
          ),
        ],
      ),
    );
  }
}
//-------

class LogoutDialogWidget extends StatelessWidget {
  LogoutDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DialogWidget(
      height: Get.height * 0.2,
      width: Get.width * 0.2,
      body: Column(
        children: [
          const SizedBox(height: 50),
          // const Text("هل أنت متأكد من أنك "),
          const Text(
            "هل أنت متأكد من تسجيل الخروج ؟",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 40,
                  width: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xff54565A),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    "إلغاء",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.find<AuthController>().SingOut();
                  Get.back();
                },
                child: Container(
                  height: 40,
                  width: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    "نعم",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )

          // Padding(
          //   padding: const EdgeInsets.all(20),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(50),
          //     child: ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: const Color.fromARGB(255, 220, 72, 62),
          //       ),
          //       onPressed: () {
          //         Get.find<AuthController>().SingOut();
          //         Get.back();
          //       },
          //       child: const Text(
          //         'تسجيل الخروج',
          //         style: TextStyle(color: Colors.white, fontSize: 16),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
//-------

BoxDecoration cardDecoration(ThemeController themeController) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: themeController.isDarkTheme
        ? const Color.fromARGB(255, 68, 65, 65)
        : Colors.white,
  );
}
//-------

class ListTitlesCard extends StatelessWidget {
  final String title;
  final Widget trailing;
  final void Function()? onTap;

  const ListTitlesCard({
    Key? key,
    required this.title,
    required this.trailing,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: Get.width * 0.95,
        decoration: cardDecoration(themeController),
        child: ListTile(
          title: Text(title),
          trailing: trailing,
        ),
      ),
    );
  }
}
