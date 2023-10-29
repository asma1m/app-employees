import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controller/list_to_do_controller.dart';

class TextFild extends StatelessWidget {
  final TextEditingController? textcontroller;
  final Function(bool)? onChanged;

  const TextFild({Key? key, this.textcontroller, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListToDo listToDoController = Get.put(ListToDo(), permanent: true);
    return GetBuilder<ListToDo>(
      builder: (controller) => SizedBox(
        height: Get.height * 0.44,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: listToDoController.notes!.length,
            itemBuilder: (context, index) {
              return Row(
                children: <Widget>[
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      controller: textcontroller,
                      decoration: const InputDecoration(),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  InkWell(
                    onTap: () {
                      controller.setIsChecked(index);
                    },
                    child: Icon(
                      !controller.isChecked![index] &&
                              !controller.isChecked![index]
                          ? Icons.circle_outlined
                          : Icons.check_circle,
                      color: !controller.isChecked![index]
                          ? Colors.grey
                          : Colors.green,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                ],
              );
            }),
      ),
    );
  }
}
