import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../logic/controller/timer_controller.dart';

class TimerWidget extends StatelessWidget {
  TimerWidget({super.key});
  final TimerController timerController =
      Get.put(TimerController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitle(context, "..ابدأ يومك"),
        SizedBox(height: Get.height * 0.03),
        Container(
          height: Get.height * 0.12,
          width: Get.width * 0.9,
          decoration: _buildContainerDecoration(),
          child: Row(
            children: [
              SizedBox(width: Get.width * 0.05),
              GetBuilder<TimerController>(
                builder: (controller) {
                  return controller.isRunning
                      ? _buildTimerButton(
                          "توقف", const Color.fromARGB(255, 212, 138, 72), () {
                          controller.stopTimer();
                        })
                      : _buildTimerButton(
                          "ابدأ", const Color.fromARGB(255, 239, 229, 135), () {
                          controller.startTimer();
                        });
                },
              ),
              SizedBox(width: Get.width * 0.2),
              _buildTimeText(context),
            ],
          ),
        ),
      ],
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
              .copyWith(fontSize: 25),
        ),
      ),
    );
  }

  BoxDecoration _buildContainerDecoration() {
    return BoxDecoration(
      color:
          Get.isDarkMode ? const Color.fromARGB(255, 68, 65, 65) : Colors.white,
      borderRadius: BorderRadius.circular(25),
    );
  }

  Widget _buildTimerButton(
      String text, Color backgroundColor, VoidCallback onPressed) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: SizedBox(
        height: 50,
        width: 100,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
          ),
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }

  Widget _buildTimeText(BuildContext context) {
    final TimerController timerController = Get.find();
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Obx(() => Text(timerController.time.value,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 30))),
    );
  }
}
