import 'package:flutter/material.dart';

import '../widget/card_widget.dart';

class EmployeesCardScreen extends StatelessWidget {
  const EmployeesCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: EmployeeCard(),
      ),
    );
  }
}
