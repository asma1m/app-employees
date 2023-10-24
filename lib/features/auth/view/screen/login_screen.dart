import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controller/auth_controller.dart';
import '../widget/button.dart';
import '../widget/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final AuthController authController =
      Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: Get.width * 0.8,
          child: GetBuilder<AuthController>(builder: (authController) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: Get.height * 0.11,
                    child: const Image(
                        image: AssetImage(
                      "assets/images/logo-dark.png",
                    ))),
                SizedBox(height: Get.height * 0.08),
                Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      "اهلاً",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.grey, fontFamily: "Tajawal"),
                    )),
                SizedBox(height: Get.height * 0.02),
                TextFildeWidget(
                  text: "الإميل",
                  controller: authController.emailController,
                  // lableText: "ادخل الإيميل",
                  icon: const Icon(Icons.email_outlined),
                ),
                SizedBox(height: Get.height * 0.01),
                TextFildeWidget(
                  text: "رمز الدخول",
                  controller: authController.passwordController,
                  //  lableText: "ادخل الرقم السري",
                  icon: const Icon(Icons.lock_outline),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'نسيت رمز الدخول؟',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.04),
                Button(
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
    );
  }
}
