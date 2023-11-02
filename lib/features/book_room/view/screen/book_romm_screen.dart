import 'package:employees_app/features/book_room/view/widget/dialoge_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controller/booking_room_controller.dart';

import '../widget/card_booking_room.dart';
import '../widget/room_is_empty.dart';

// ignore: must_be_immutable
class BookingRoom extends StatelessWidget {
  BookingRoom({super.key});

  BookingRoomController controller =
      Get.put(BookingRoomController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff0096c7),
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AddBookingRoom(),
                );
              },
              icon: const Icon(Icons.post_add_outlined),
              color: Colors.white,
            )
          ],
        ),
        body: GetBuilder<BookingRoomController>(
            builder: (controller) => Column(
                  children: [
                    if (controller.listOfBooingRese.isNotEmpty)
                      ListView.builder(
                        itemCount: controller.listOfBooingRese.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final room = controller.listOfBooingRese[index];
                          final roomName = room['roomName'];
                          final startTime = room['startTime'];
                          final endTime = room['endTime'];

                          return CardWidget(
                            roomName: roomName,
                            startTime: startTime,
                            endTime: endTime,
                            index: index,
                          );
                        },
                      ),
                    if (controller.listOfBooingRese.isEmpty) const 
                    EmptyRoom()
                  ],
                )));
  }
}
