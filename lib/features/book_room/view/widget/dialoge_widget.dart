import 'package:employees_app/features/book_room/view/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/button.dart';
import '../../../../common/widget/dialoge_widget.dart';
import '../../../auth/view/widget/text_field_widget.dart';
import '../../logic/controller/booking_room_controller.dart';

class AddBookingRoom extends StatelessWidget {
  AddBookingRoom({super.key});
  final BookingRoomController controller =
      Get.put(BookingRoomController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return DialogWidget(
      height: Get.height * 0.6,
      width: Get.width,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("احجز غرفة اجتماعات"),
              SizedBox(
                height: Get.height * 0.01,
              ),
              TextFildeBookingRoomWidget(
                controller: controller.roomName,
                text: ": اسم اللإداره",
              ),
              TextFildeBookingRoomWidget(
                controller: controller.startTime,
                text: ": بداية الاجتماع",
              ),
              TextFildeBookingRoomWidget(
                  controller: controller.endTime, text: " : نهاية الاجتماع"),
              SizedBox(height: Get.height * 0.05),
              Button(
                onTap: () {
                  controller.setAddRoom(
                    roomName: controller.roomName.text,
                    startTime: controller.startTime.text,
                    endTime: controller.endTime.text,
                  );
                  Navigator.pop(context);
                },
                title: "احجز",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
