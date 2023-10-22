import 'package:get/get.dart';

import '../../features/auth/view/screen/login_screen.dart';
import '../../features/profile/view/screen/profile_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: Routs.loginScreen, page: () => LoginScreen()),
    GetPage(name: Routs.profilePage, page: () => const ProfileScreen())
  ];
}

class Routs {
  static const loginScreen = "/login";
  static const profilePage = "/profile";
}
