import 'package:employees_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/custom_app_bar.dart';
import '../../../../core/routes/routes.dart';
import '../../../invitations/logic/controller.dart';
import '../../../meeting_room/model/meeting_rooms_modle.dart';
import '../../logic/controller/coose_time_controller.dart';
import '../widget/button.dart';
import '../widget/dropdown_button_widget.dart';

// ignore: must_be_immutable
class AddBookingScrean extends StatelessWidget {
  AddBookingScrean({super.key, this.timeBooking, required this.room});

  CooseTimeController chooseTime =
      Get.put(CooseTimeController(), permanent: true);
  InvitationController invitationController =
      Get.put(InvitationController(), permanent: true);

  final timeBooking;
  List<Map<String, dynamic>> room;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> i = rooms[chooseTime.currentIndx]["time"];

    return Scaffold(
        appBar: CustomAppBar(
          title: "",
          onTap: () {
            Get.back();
          },
        ),
        body: GetBuilder<CooseTimeController>(
            builder: (controller) => Stack(
                  alignment: Alignment.topCenter,
                  children: [
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
                        Container(
                          height: Get.height * 0.55,
                          width: Get.width * 0.8,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(137, 227, 227, 227),
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: const Color(0xffDADADA))),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.only(right: 15),
                                    child: Text(
                                      "اسم الإدارة",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              fontSize: 18,
                                              color: AppColors.onPrimary2),
                                    ),
                                  ),
                                  const DropdownButtonWidget(),
                                  const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Divider(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(right: 10),
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "الوقت",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                              fontSize: 18,
                                              color: Get.isDarkMode
                                                  ? AppColors.whiteColor
                                                  : const Color.fromARGB(
                                                      255, 86, 79, 79),
                                            ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 85,
                                          decoration: BoxDecoration(
                                              color: AppColors.onPrimary,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                i[timeBooking]["to_time"],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineSmall!
                                                    .copyWith(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "إلى",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                                fontSize: 18,
                                                color: Get.isDarkMode
                                                    ? AppColors.whiteColor
                                                    : const Color.fromARGB(
                                                        255, 86, 79, 79),
                                              ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 85,
                                          decoration: BoxDecoration(
                                              color: AppColors.onPrimary2,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                i[timeBooking]["from_time"],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineSmall!
                                                    .copyWith(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "من",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                                fontSize: 18,
                                                color: Get.isDarkMode
                                                    ? AppColors.whiteColor
                                                    : const Color.fromARGB(
                                                        255, 86, 79, 79),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Divider(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.only(right: 15),
                                    child: Text(
                                      "دعوة للإجتماع",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              fontSize: 18,
                                              color: AppColors.onPrimary2),
                                    ),
                                  ),
                                  const SizedBox(
                                      height: 50,
                                      child: DropdownButtonWidget2()),
                                  SizedBox(
                                    height: Get.height * 0.03,
                                  ),
                                  BouttonBooking2(
                                      title: "أحجز",
                                      onTap: () {
                                        chooseTime.setAddRoom(
                                            roomName: chooseTime.selectedValue!,
                                            startTime: i[timeBooking]
                                                ["from_time"],
                                            endTime: i[timeBooking]["to_time"]);
                                        chooseTime.bookingRoom(timeBooking);
                                        chooseTime.clearSelectedNames();
//------------------------------------------------------------------------------
                                        int indx2 =
                                            rooms[chooseTime.currentIndx]
                                                        ["listOfBooingRese"]
                                                    .length -
                                                1;
                                        final room =
                                            rooms[controller.currentIndx]
                                                ["listOfBooingRese"][indx2];
                                        final roomName = room['roomName'];
                                        invitationController.setAddRoom(
                                            roomName:
                                                rooms[chooseTime.currentIndx]
                                                    ["name"],
                                            startTime: i[timeBooking]
                                                ["from_time"],
                                            endTime: i[timeBooking]["to_time"],
                                            place: roomName);
                                        Get.offAllNamed(Routs.bookingRomm);
                                      })
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                )));
  }
}

Widget timeButton(
  BuildContext context, {
  Function()? onTap,
  required Color color,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        width: 85,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "12:30 AM",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
          ),
        ),
      ),
    );
