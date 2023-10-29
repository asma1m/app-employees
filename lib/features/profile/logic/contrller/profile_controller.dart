import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../core/db/fierbase.istsn.dart';
import '../../model/users_moder.dart';

class ProfileController extends GetxController {
  var userList = [];
  bool isLoding = false;

  @override
  void onInit() {
    Users();
    super.onInit();
    update();
  }

  // ignore: non_constant_identifier_names
  Future Users() async {
    final CollectionReference user =
        FirebaseInstance.fireStore.collection("users");
    isLoding = true;
    try {
      var result = await user.get();
      userList = result.docs
          .map((doc) =>
              UsersModel.fromJson(json: doc.data() as Map<String, dynamic>))
          .toList();
    } on FirebaseException catch (e) {
      print(e);
    } finally {
      isLoding = false;
    }
    update();
  }
}
