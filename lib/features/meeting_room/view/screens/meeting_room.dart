import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/meeting_rooms_card.dart';

class MeetingRoomScreen extends StatelessWidget {
  const MeetingRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0096c7),
      ),
      body: SafeArea(
          child: Column(children: [
        SizedBox(
          height: Get.height * 0.05,
        ),
        const MeetingRoomsCard(),
       
      ])),
    );
  }
}
