import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFildeWidget extends StatelessWidget {
  const TextFildeWidget(
      {super.key,
      this.onChange,
      this.lableText,
      this.nameTextFilde,
      this.icon,
      required this.controller,
      this.text});
  final TextEditingController controller;
  final String? text;
  final ValueChanged? onChange;
  final String? lableText;
  final String? nameTextFilde;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.height * 0.01),
        Container(
            padding: const EdgeInsets.only(right: 10),
            alignment: Alignment.centerRight,
            child: Text(
              "$text",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 86, 79, 79),
                  fontFamily: 'Tajawal'),
            )),
        SizedBox(height: Get.height * 0.01),
        TextField(
          textAlign: TextAlign.end,
          onChanged: onChange,
          controller: controller,
          decoration: InputDecoration(
            labelText: lableText,
            filled: true,
            suffixIcon: icon,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
      ],
    );
  }
}
