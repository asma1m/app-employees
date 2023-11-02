// import 'package:flutter/cupertino.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';

// class BookingRoomController extends GetxController {
//   List<Map<String, dynamic>> listOfBooingRese = [];

//   //--
//   TextEditingController roomName = TextEditingController();
//   final startTime = TextEditingController();
//   TextEditingController endTime = TextEditingController();

//   void setAddRoom({
//     required String roomName,
//     required String startTime,
//     required String endTime,
//   }) {
//     listOfBooingRese.add({
//       'roomName': roomName,
//       'startTime': startTime,
//       'endTime': endTime,
//     });
//     clearController();
//     update();
//   }

//   void removeRoom(int index) {
//     if (index >= 0 && index < listOfBooingRese.length) {
//       listOfBooingRese.removeAt(index);
//       update();
//     }
//   }

//   clearController() {
//     roomName.clear();
//     startTime.clear();
//     endTime.clear();
//   }
// }
