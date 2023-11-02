import 'package:employees_app/features/book_room/view/screen/coose%D9%80time.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/custom_app_bar.dart';
import '../../../../core/routes/routes.dart';
import '../../../meeting_room/model/meeting_rooms_modle.dart';

import '../../logic/controller/coose_time_controller.dart';
import '../widget/button.dart';
import '../widget/card_booking_room.dart';
import '../widget/room_is_empty.dart';

// ignore: must_be_immutable
class BookingRoom extends StatelessWidget {
  BookingRoom({super.key, required this.room});
  // ignore: prefer_typing_uninitialized_variables
  List<Map<String, dynamic>> room;

  CooseTimeController controller =
      Get.put(CooseTimeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CooseTimeController>(
      builder: (controller) => Scaffold(
          appBar: CustomAppBar(
            title: "",
            onTap: () {
              Get.offAllNamed(Routs.mainScreen);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => MainScreen()));
            },
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: Get.width * 0.05,
              ),
              if (rooms[controller.currentIndx]["listOfBooingRese"].isNotEmpty)
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text("حجوزات غرفة الاجتماعات ",
                      style: TextStyle(fontSize: 23, color: Colors.black)),
                ),
              SizedBox(
                height: Get.width * 0.02,
              ),
              if (rooms[controller.currentIndx]["listOfBooingRese"].isNotEmpty)
                SizedBox(
                  height: Get.height * 0.69,
                  child: ListView.builder(
                    itemCount: rooms[controller.currentIndx]["listOfBooingRese"]
                        .length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final room = rooms[controller.currentIndx]
                          ["listOfBooingRese"][index];
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
                ),
              if (rooms[controller.currentIndx]["listOfBooingRese"].isEmpty)
                EmptyRoom(
                  room: room,
                )
            ],
          ),
          floatingActionButton:
              rooms[controller.currentIndx]["listOfBooingRese"].isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(right: 40, bottom: 70),
                      child: BouttonBooking2(
                          title: "أحجز",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChooseTimeScrean(
                                          room: room,
                                        )));
                          }),
                    )
                  : null),
    );
  }
}
