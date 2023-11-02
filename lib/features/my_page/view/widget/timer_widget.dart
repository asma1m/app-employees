import 'package:employees_app/features/book_room/view/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../logic/controller/timer_controller.dart';

class TimerWidget extends StatelessWidget {
  TimerWidget({super.key});
  final TimerController timerController =
      Get.put(TimerController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TimerController>(
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Get.height * 0.2),
          Container(
              width: Get.width,
              alignment: Alignment.center,
              child: _buildTimeText(context)),
          SizedBox(height: Get.height * 0.15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTimerButton2(
                    onTap: () {
                      controller.stopTimer();
                    },
                    icon: const Icon(
                      Icons.play_arrow_outlined,
                      color: Color(0xff00C2FF),
                    )),
                _buildTimerButton(
                    onTap: () {
                      controller.startTimer();
                    },
                    icon: const Icon(
                      Icons.pause,
                      color: Colors.white,
                      size: 30,
                    )),
                _buildTimerButton2(
                    onTap: () {
                      controller.resetTimer();
                    },
                    icon: const Icon(
                      Icons.refresh_outlined,
                      color: Color(0xff00C2FF),
                    )),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.09),
          const BouttonBooking2(title: "مهامي")
        ],
      ),
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

  Widget _buildTimerButton({required Icon icon, required VoidCallback onTap}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: const Color(0xff00C2FF),
            borderRadius: BorderRadius.circular(50)),
        child: InkWell(
          onTap: onTap,
          child: Container(
            child: icon,
          ),
        ),
      ),
    );
  }

  Widget _buildTimerButton2({required Icon icon, required VoidCallback onTap}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xff00C2FF),
            ),
            borderRadius: BorderRadius.circular(50)),
        child: InkWell(
          onTap: onTap,
          child: Container(
            child: icon,
          ),
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
              .copyWith(fontSize: 30, color: Color(0xff00ADBB)))),
    );
  }
}
