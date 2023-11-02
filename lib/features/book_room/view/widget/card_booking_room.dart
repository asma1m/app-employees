import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controller/booking_room_controller.dart';

class CardWidget extends StatelessWidget {
  CardWidget(
      {super.key,
      required this.roomName,
      required this.startTime,
      required this.endTime,
     required this.index});
  final String roomName;
  final String startTime;
  final String endTime;
  final index;

  BookingRoomController controller =
      Get.put(BookingRoomController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.11,
      margin: const EdgeInsets.all(10),
      decoration: _buildContainerDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            SizedBox(
              width: Get.width * 0.93,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        controller.removeRoom(index);
                      },
                      icon: const Icon(Icons.close)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      roomName,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
            Text(" $startTime : من  "),
            Text(" $endTime : إالى  ")
          ]),
          Container(
            width: Get.width * 0.015,
            decoration: const BoxDecoration(
                color: Color(0xff0096c7),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          )
        ],
      ),
    );
  }
}

BoxDecoration _buildContainerDecoration() {
  return BoxDecoration(
    color:
        Get.isDarkMode ? const Color.fromARGB(255, 68, 65, 65) : Colors.white,
    borderRadius: BorderRadius.circular(15),
  );
}
