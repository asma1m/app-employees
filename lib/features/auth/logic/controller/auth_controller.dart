import 'package:employees_app/core/const/keys.dart';
import 'package:employees_app/core/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';

import '../service/auth_service.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService();
  GetStorage authStorage = GetStorage();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //
  signInWithEmail(
    String email,
    String password,
  ) async {
    await _authService.signInWithEmailFirebase(
      email: email,
      password: password,
      onDone: (String? uid) async {
        if (uid != null) {
          await authStorage.write(AppKeys.authKey, uid);

          Get.toNamed(Routs.profilePage);
        }
      },
      onError: (String e) {
        Get.snackbar(
          'something went wrong',
          e,
        );
      },
    );
  }

  clearControllers() {
    emailController.clear();
    passwordController.clear();
  }
}
