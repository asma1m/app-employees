import 'package:get/get_state_manager/get_state_manager.dart';

class BookingRoomController extends GetxController {
  List<Map<String, dynamic>> listOfBooingRese = [];

  void setAddRoom({
    required String roomName,
    required DateTime startTime,
    required DateTime endTime,
  }) {
    listOfBooingRese.add({
      'roomName': roomName,
      'startTime': startTime,
      'endTime': endTime,
    });
    update();
  }

  void removeRoom(int index) {
    if (index >= 0 && index < listOfBooingRese.length) {
      listOfBooingRese.removeAt(index);
      update();
    }
  }
}
