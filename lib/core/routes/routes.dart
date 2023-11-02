import 'package:employees_app/features/main/view/mein_screen.dart';
import 'package:get/get.dart';
import '../../features/auth/view/screen/login_screen.dart';
import '../../features/book_room/view/screen/add_booling_room.dart';
import '../../features/book_room/view/screen/book_romm_screen.dart';
import '../../features/book_room/view/screen/cooseـtime.dart';
import '../../features/employee_card/view/screens/card_screen.dart';
import '../../features/invitations/view/screans/all_invitations.dart';
import '../../features/invitations/view/screans/invitation.dart';
import '../../features/main/view/on_boarding_screen.dart';
import '../../features/meeting_room/view/screens/meeting_room.dart';
import '../../features/profile/view/screen/personal_Information.dart';
import '../../features/profile/view/screen/profile_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: Routs.loginScreen, page: () => LoginScreen()),
    GetPage(name: Routs.profilePage, page: () => const ProfileScreen()),
    GetPage(
      name: Routs.mainScreen,
      page: () => MainScreen(),
    ),
    GetPage(name: Routs.meetingRooms, page: () => const MeetingRoomScreen()),
    GetPage(
        name: Routs.bookingRomm,
        page: () => BookingRoom(
              room: [],
            )),
    GetPage(
      name: Routs.employeesCard,
      page: () => const EmployeesCardScreen(),
    ),
    GetPage(name: Routs.onboarding, page: () => const Onboarding()),
    // GetPage(
    //   name: Routs.addBookingScrean,
    //   page: () => AddBookingScrean(),
    // ),
    // GetPage(
    //   name: Routs.cooseTimeScrean,
    //   page: () => ChooseTimeScrean(),
    // )
    GetPage(
        name: Routs.personalInformationScrean,
        page: () => PersonalInformationScrean()),
    GetPage(
      name: Routs.allInvitationsScrean,
      page: () => AllInvitations(),
    ),
    // GetPage(
    //   name: Routs.invitationScrean,
    //   page: () => Invitation(),
    // )
  ];
}

class Routs {
  static const loginScreen = "/login";
  static const profilePage = "/profile";
  static const mainScreen = "/mainScreen";
  static const meetingRooms = "/meetingRoomScreen";
  static const bookingRomm = "/bookingRoom";
  static const employeesCard = "/employeesCardScreen";
  static const onboarding = "/onboarding";
  static const addBookingScrean = "/addBookingScrean";
  static const cooseTimeScrean = "/chooseTimeScrean";
  static const personalInformationScrean = "/personalInformationScrean";
  static const allInvitationsScrean = "/allInvitations";
  static const invitationScrean = "/invitation";
}
