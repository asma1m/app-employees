
import 'package:employees_app/features/profile/view/widget/settings_app.dart';
import 'package:flutter/material.dart';
import '../widget/hero_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [ HeroSection(), SettingsApp()],
        ),
      ),
    );
  }
}

LinearGradient buttonColor() => const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromARGB(108, 34, 0, 255),
        Color.fromARGB(108, 198, 175, 224),
      ],
      // stops: [0.3, 0.5],
    );
