import 'package:flutter/material.dart';

import '../../../../common/widget/custom_app_bar.dart';
import '../widget/card_widget.dart';

class EmployeesCardScreen extends StatelessWidget {
  const EmployeesCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "بطاقتي",
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 100),
          child: EmployeeCard(),
        ),
      ),
    );
  }
}
