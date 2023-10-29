import 'dart:async';

import 'package:get/get.dart';

class TimerController extends GetxController {
  Timer? _timer;
  int remainSeconds = 28800; // 8 hours in seconds
  final time = '8:00:00'.obs;
  bool isRunning = false;

  void startTimer() {
    if (_timer == null) {
      isRunning = true;
      _startTimer(remainSeconds);
    }
    update();
  }

  void stopTimer() {
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
      isRunning = false;
    }
    update();
  }

  void resetTimer() {
    stopTimer();
    remainSeconds = 28800; // Reset to 8 hours in seconds
    time.value = '8:00:00';
    update();
  }

  _startTimer(int seconds) {
    const duration = Duration(seconds: 1);
    remainSeconds = seconds;
    _timer = Timer.periodic(duration, (Timer timer) {
      if (remainSeconds == 0) {
        timer.cancel();
        isRunning = false;
        _timer = null;
      } else {
        int hours = remainSeconds ~/ 3600;
        int minutes = (remainSeconds % 3600) ~/ 60;
        int seconds = remainSeconds % 60;
        // ignore: prefer_interpolation_to_compose_strings
        time.value = hours.toString().padLeft(1, "0") +
            ":" +
            minutes.toString().padLeft(2, "0") +
            ":" +
            seconds.toString().padLeft(2, "0");
        remainSeconds--;
      }
    });
    update();
  }
}
