import 'package:employees_app/core/theme/app_color.dart';
import 'package:employees_app/features/meeting_room/model/meeting_rooms_modle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/custom_app_bar.dart';

import '../../logic/controller/coose_time_controller.dart';
import '../widget/button.dart';
import 'add_booling_room.dart';

class ChooseTimeScrean extends StatelessWidget {
  ChooseTimeScrean({super.key, required this.room});
  List<Map<String, dynamic>> room;
  CooseTimeController cooseTime =
      Get.put(CooseTimeController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> i = rooms[cooseTime.currentIndx]["time"];
    int? selectedTime;
    return GetBuilder<CooseTimeController>(
        builder: (controller) => Scaffold(
              appBar: CustomAppBar(
                title: "",
                onTap: () {
                  Get.back();
                },
              ),
              body: Stack(alignment: Alignment.topCenter, children: [
                Positioned(
                  top: 95,
                  child: Stack(alignment: Alignment.center, children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                    ),
                    Image.asset("assets/images/DealerLogo.png"),
                    Image.asset("assets/images/Home.png"),
                  ]),
                ),
                Center(
                  child: Stack(children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: Get.height * 0.55,
                          width: Get.width * 0.8,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(137, 227, 227, 227),
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: const Color(0xffDADADA))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.all(15),
                                  child: const Text("الأوقات المتوفرة")),
                              Wrap(
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                spacing: 8,
                                runSpacing: 8,
                                children: i.asMap().entries.map((entry) {
                                  int index = entry.key;
                                  Map<String, dynamic> room = entry.value;

                                  return GestureDetector(
                                    onTap: () {
                                      if (room["Booked"] != "true") {
                                        cooseTime.isBookingRoom(index);
                                      } else {
                                        Get.snackbar(
                                          'Already Booked',
                                          'This time slot is already booked.',
                                        );
                                      }

                                      selectedTime = index;
                                    },
                                    child: room["Booked"] == "true"
                                        ? Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: AnimatedContainer(
                                              height: 35,
                                              width: 140,
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              decoration: BoxDecoration(
                                                color: const Color(0xffDADADA),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Center(
                                                    child: Text(
                                                  "${room["from_time"].toString()} - ${room["to_time"].toString()} ",
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(
                                                          166, 255, 255, 255)),
                                                )),
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: AnimatedContainer(
                                              height: 35,
                                              width: 140,
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              decoration: BoxDecoration(
                                                color:
                                                    room["is_book"] == "false"
                                                        ? const Color.fromARGB(
                                                            66, 0, 171, 187)
                                                        : const Color.fromARGB(
                                                            171, 0, 171, 187),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    if (room["is_book"] ==
                                                        "true")
                                                      const Icon(
                                                        Icons.check,
                                                        color: AppColors
                                                            .whiteColor,
                                                        size: 15,
                                                      ),
                                                    Text(
                                                      "${room["from_time"].toString()} - ${room["to_time"].toString()} ",
                                                      style: const TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                  );
                                }).toList(),
                              ),
                              const SizedBox(height: 20),
                              BouttonBooking2(
                                  title: "أحجز",
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AddBookingScrean(
                                                    timeBooking: selectedTime,
                                                    room: room)));
                                  })
                            ],
                          ),
                        )),
                  ]),
                ),
              ]),
            ));
  }
}
