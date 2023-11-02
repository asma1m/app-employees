import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key, required this.body, this.height, this.width});
  final Widget body;
  // ignore: prefer_typing_uninitialized_variables
  final height;
  final width;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: height,
        width: width,
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
