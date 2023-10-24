import 'package:flutter/material.dart';

import '../widget/meeting_rooms_card.dart';

class MeetingRoomScreen extends StatelessWidget {
  const MeetingRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(children: [
        SizedBox(
          height: 100,
        ),
        MeetingRoomsCard()
      ])),
    );
  }
}
