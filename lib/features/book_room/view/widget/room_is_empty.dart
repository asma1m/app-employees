import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/button.dart';
import 'dialoge_widget.dart';

class EmptyRoom extends StatelessWidget {
  const EmptyRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: Get.height * 0.3),
        const Text("لا يوجد حجز حالياً"),
        SizedBox(height: Get.height * 0.02),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            "assets/images/no-task.png",
            width: Get.width * 0.3,
          ),
        ),
        SizedBox(height: Get.height * 0.03),
        Button(
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => AddBookingRoom(),
            );
          },
          title: "احجز",
        )
      ],
    ));
  }
}
