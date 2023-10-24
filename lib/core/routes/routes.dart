import 'package:employees_app/features/main/view/mein_screen.dart';
import 'package:get/get.dart';

import '../../features/auth/view/screen/login_screen.dart';
import '../../features/meeting_room/view/screens/meeting_room.dart';
import '../../features/profile/view/screen/profile_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: Routs.loginScreen, page: () => LoginScreen()),
    GetPage(name: Routs.profilePage, page: () => const ProfileScreen()),
    GetPage(
      name: Routs.mainScreen,
      page: () => MainScreen(),
    ),
    GetPage(name: Routs.meetingRooms, page: () => const MeetingRoomScreen())
  ];
}

class Routs {
  static const loginScreen = "/login";
  static const profilePage = "/profile";
  static const mainScreen = "/mainScreen";
  static const meetingRooms = "/meetingRoomScreen";
}
