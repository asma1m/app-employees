import 'package:employees_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/events.dart';
import '../widget/meeting_rooms_card.dart';

class MeetingRoomScreen extends StatelessWidget {
  const MeetingRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.onPrimary2,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Column(children: [
          SizedBox(
            height: Get.height * 0.05,
          ),
          MeetingRoomsCard(),
          SizedBox(
            height: Get.height * 0.05,
          ),
          const EventsCard()
        ]),
      )),
    );
  }
}
