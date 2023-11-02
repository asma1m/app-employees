import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/routes/routes.dart';
import '../screen/cooseـtime.dart';
import 'button.dart';

class EmptyRoom extends StatelessWidget {
   EmptyRoom({super.key , required this.room});
   List<Map<String, dynamic>> room;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: Get.height * 0.4),
        const Text("لا يوجد حجز حالياً"),

        SizedBox(height: Get.height * 0.038),
        BouttonBooking2(
            title: "أحجز",
            onTap: () {
              Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChooseTimeScrean(
                                      room: room,
                                    )));

              // showDialog(
              //   context: context,
              //   builder: (_) => AddBookingRoom(),
              // );
            }),

        // Button(
        //   onTap: () {
        //     showDialog(
        //       context: context,
        //       builder: (_) => AddBookingRoom(),
        //     );
        //   },
        //   title: "احجز",
        // )
      ],
    ));
  }
}
