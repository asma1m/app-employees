import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controller/coose_time_controller.dart';

class DropdownButtonWidget extends StatelessWidget {
  const DropdownButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CooseTimeController cooseTimeController =
        Get.find<CooseTimeController>();

    final size = MediaQuery.of(context).size;

    return GetBuilder<CooseTimeController>(
      builder: (controller) => Container(
        height: size.height * 0.06,
        width: size.width * 0.7,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Color(0xffE3E3E3), borderRadius: BorderRadius.circular(10)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: const Text("اختر إدارة"),
            alignment: AlignmentDirectional.bottomCenter,
            value: controller.selectedValue,
            onChanged: (newValue) {
              controller.setSelectedValue(newValue.toString());
            },
            items: controller.item.map((String value) {
              return DropdownMenuItem<String>(
                alignment: AlignmentDirectional.centerStart,
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class DropdownButtonWidget2 extends StatelessWidget {
  const DropdownButtonWidget2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CooseTimeController cooseTimeController =
        Get.find<CooseTimeController>();

    final size = MediaQuery.of(context).size;

    return GetBuilder<CooseTimeController>(
      builder: (controller) => Container(
        height: size.height * 0.06,
        width: size.width * 0.7,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Color(0xffE3E3E3), borderRadius: BorderRadius.circular(10)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: const Text("حدد الاسماء"),
            alignment: AlignmentDirectional.bottomCenter,
            value: controller.selectedNames.isNotEmpty
                ? controller.selectedNames.last
                : null,
            onChanged: (newValue) {
              controller.toggleNameSelection(
                newValue ?? '',
                !controller.selectedNames.contains(newValue),
              );
            },
            items: controller.names.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                        value: controller.selectedNames.contains(value),
                        onChanged: (bool? isChecked) {
                          controller.toggleNameSelection(
                              value, isChecked ?? false);
                        },
                      ),
                      Text(value),
                    ]),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
