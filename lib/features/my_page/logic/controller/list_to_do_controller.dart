import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../view/widget/text_filde_widget.dart';

class ListToDo extends GetxController {
  List<Widget>? notes = [];
  List<TextEditingController>? notesController = [];
  List<bool>? isChecked = [];

  // ignore: non_constant_identifier_names
  AddNotes() {
    notesController!.add(TextEditingController());
    notes!.add(
      TextFild(
        textcontroller: notesController!.last,
      ),
    );
    isChecked!.add(false);
    update();
  }

  // ignore: non_constant_identifier_names
  RemoveNotes() {
    notes!.removeLast();
    notesController!.removeLast();
    isChecked!.removeLast();
    update();
  }

  setIsChecked(int index) {
    isChecked![index] ? isChecked![index] = false : isChecked![index] = true;
    update();
  }

  @override
  void onInit() {
    AddNotes();
    super.onInit();
    update();
  }
}
