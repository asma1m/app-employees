import 'package:employees_app/core/theme/app_color.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controller/auth_controller.dart';
import '../../../../common/widget/button.dart';
import '../widget/hero_section.dart';
import '../widget/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final AuthController authController =
      Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        body: Center(
          child: SizedBox(
            width: Get.width * 0.8,
            child: GetBuilder<AuthController>(builder: (authController) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: Get.height * 0.3),
                  TextFildeWidget(
                    text: "البريد الإلكتروني",
                    controller: authController.emailController,
                    // lableText: "ادخل الإيميل",
                    icon: const Icon(Icons.email_outlined),
                  ),
                  SizedBox(height: Get.height * 0.01),
                  TextFildeWidget(
                    text: "الرقم السري",
                    controller: authController.passwordController,
                    isPassWord: true,
                    icon: const Icon(Icons.lock_outline),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'نسيت رمز الدخول؟',
                      style: TextStyle(
                        color: AppColors.onPrimary2,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.04),
                  Button(
                    title: "تسجيل الدخول",
                    onTap: () async {
                      authController.signInWithEmail(
                          authController.emailController.text,
                          authController.passwordController.text);
                    },
                  ),
                ],
              );
            }),
          ),
        ),
      ),
      HeroSection(),
    ]);
  }
}
