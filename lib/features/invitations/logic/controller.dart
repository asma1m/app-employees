import 'package:get/get.dart';

class InvitationController extends GetxController {
  List<Map<String, dynamic>> invitations = [];

  void setAddRoom({
    required String roomName,
    required String startTime,
    required String endTime,
    required String place,
  }) {
    invitations.add({
      'roomName': roomName,
      'startTime': startTime,
      'endTime': endTime,
      'place': place
    });

    update();
  }
}
