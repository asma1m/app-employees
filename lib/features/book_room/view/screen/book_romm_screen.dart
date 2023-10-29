import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../logic/controller/booking_room_controller.dart';
import '../widget/room_is_empty.dart';

class BookingRoom extends StatelessWidget {
  BookingRoom({super.key});

  BookingRoomController controller =
      Get.put(BookingRoomController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (controller.listOfBooingRese.isEmpty) const EmptyRoom()
          ],
        ));
  }
}
