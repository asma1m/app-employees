import 'dart:developer';

import 'package:employees_app/core/routes/routes.dart';
import 'package:employees_app/features/book_room/view/screen/book_romm_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_color.dart';
import '../../../book_room/logic/controller/coose_time_controller.dart';
import '../../model/meeting_rooms_modle.dart';

class MeetingRoomsCard extends StatelessWidget {
  MeetingRoomsCard({
    super.key,
  });
  CooseTimeController controller =
      Get.put(CooseTimeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            "غرف الاجتماعات  ",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontWeight: FontWeight.normal, fontSize: 20),
          ),
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: rooms.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                bool isNotAvailable = false;
                var timeNotAvailable;
                DateTime now = DateTime.now();

                final timeFormat = DateFormat('h:00a');

                String formattedTime = timeFormat.format(now);

                for (var timeSlot in rooms[index]["time"]) {
                  if (formattedTime == timeSlot["from_time"] &&
                      timeSlot["Booked"] == "true") {
                    isNotAvailable = true;

                    timeNotAvailable = timeSlot["to_time"];

                    break;
                  }
                }
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: InkWell(
                    onTap: () {
                      controller.currentIndx = index;
                      controller.room = rooms[index]["time"];
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BookingRoom(
                                    room: rooms[index]["time"],
                                  )));
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        decoration: cardDecoration(context),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 40, left: 10),
                                  child: Text(
                                    rooms[index]["name"].toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17),
                                  ),
                                ),
                                SizedBox(height: Get.height * 0.02),
                                Container(
                                  height: 25,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: isNotAvailable
                                          ? Color(0xffF3A58D)
                                          : AppColors.onPrimary,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: isNotAvailable
                                      ? Container(
                                          alignment: Alignment.center,
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          child: Text(
                                            "${timeNotAvailable} مشغول حتى ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge!
                                                .copyWith(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                          ))
                                      : Container(
                                          alignment: Alignment.center,
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          child: Text(
                                            "متاح",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge!
                                                .copyWith(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                          )),
                                ),
                              ],
                            ),
                            Container(
                                height: Get.height * 0.09,
                                width: Get.width * 0.2,
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 2, color: AppColors.greyColor),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          rooms[index]["image"].toString())),
                                )),
                          ],
                        )),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

BoxDecoration cardDecoration(BuildContext context) => BoxDecoration(
      color:
          Get.isDarkMode ? const Color.fromARGB(255, 68, 65, 65) : Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Get.isDarkMode
          ? Border.all(color: AppColors.purpleColor.withOpacity(0.05))
          : Border.all(
              color: const Color(0xffF2ECFF), width: 0.5, // light
            ),
    );
