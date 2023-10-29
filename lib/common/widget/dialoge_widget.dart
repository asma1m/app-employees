import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: Get.height * 0.3,
        width: Get.width * 0.2,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close_rounded,
                  color: Get.isDarkMode
                      ? const Color(0xffF2ECFF)
                      : const Color.fromARGB(255, 0, 0, 0),
                  size: 25,
                ),
              ),
            ),
            body
          ],
        ),
      ),
    );
  }
}
