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
                    height: Get.height * 0.15,
                    child: Image.asset(
                      "images/login.png",
                    )),
                SizedBox(height: Get.height * 0.03),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Welcome!",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.grey),
                    )),
                SizedBox(height: Get.height * 0.02),
                TextFildeWidget(
                  controller: authController.emailController,
                  lableText: "enter your email",
                  icon: const Icon(Icons.account_circle_outlined),
                ),
                SizedBox(height: Get.height * 0.03),
                TextFildeWidget(
                  controller: authController.passwordController,
                  lableText: "enter your password",
                  icon: const Icon(Icons.email_outlined),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Forget Password?',
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

LinearGradient buttonColor() => const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromARGB(108, 119, 0, 255),
        Color.fromARGB(108, 198, 175, 224),
      ],
      // stops: [0.3, 0.5],
    );
