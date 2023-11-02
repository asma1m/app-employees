import 'package:employees_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/custom_app_bar.dart';
import '../../logic/controller/list_to_do_controller.dart';
import '../../logic/controller/timer_controller.dart';
import '../widget/text_filde_widget.dart';
import '../widget/timer_widget.dart';

class MyPageSecrren extends StatelessWidget {
  MyPageSecrren({Key? key}) : super(key: key);

  final TimerController timerController =
      Get.put(TimerController(), permanent: true);
  final ListToDo listToDoController = Get.put(ListToDo(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "",
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.05),

            TimerWidget(),
            SizedBox(height: Get.height * 0.03),
            // _buildTitle(context, "اكتب ملاحظاتك"),
            // const TextFild(),
          ],
        ),
      ),
      // bottomNavigationBar:
      //     _buildElevatedButton("+", listToDoController.AddNotes),
    );
  }

  Widget _buildTitle(BuildContext context, String title) {
    return Container(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 20),
        ),
      ),
    );
  }

  Widget _buildElevatedButton(String text, Function() onPressed) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.80, bottom: 10, right: 10),
      child: Container(
        height: Get.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xff0096c7),
        ),
        child: InkWell(
            onTap: onPressed,
            child: const Icon(
              Icons.add,
              color: AppColors.whiteColor,
            )),
      ),
    );
  }
}
