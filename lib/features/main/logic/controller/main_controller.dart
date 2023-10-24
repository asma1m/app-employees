import 'package:employees_app/features/meeting_room/view/screens/meeting_room.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../auth/view/screen/login_screen.dart';
import '../../../profile/view/screen/profile_screen.dart';

class MainController extends GetxController {
  final List<Widget> widgetOptions = [
    const ProfileScreen(),
    const MeetingRoomScreen(),
    const MeetingRoomScreen()
  ];

  late int slectedIndex = 0;

  onItemTapped(int index) {
    slectedIndex = index;
    update();
  }
}
