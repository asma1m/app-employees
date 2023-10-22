import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFildeWidget extends StatelessWidget {
  const TextFildeWidget(
      {super.key, this.onChange, this.lableText, this.nameTextFilde, this.icon, required this.controller});
       final TextEditingController controller;
  final ValueChanged? onChange;
  final String? lableText;
  final String? nameTextFilde;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.height * 0.01),
        TextField(
          onChanged: onChange,
          controller: controller,
          decoration: InputDecoration(
            
            labelText: lableText,
            filled: true,
            prefixIcon: icon,
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
