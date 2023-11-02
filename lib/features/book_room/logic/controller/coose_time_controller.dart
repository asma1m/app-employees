import 'dart:collection';

import 'package:get/get.dart';

import '../../../meeting_room/model/meeting_rooms_modle.dart';

class CooseTimeController extends GetxController {
  int currentIndx = 0;
  String? _selectedValue;
  String? get selectedValue => _selectedValue;

  List<Map<String, dynamic>> room = [];

  void setSelectedValue(String selectedValue) {
    _selectedValue = selectedValue;

    update();
  }

  List<String> _selectedNames = [];

  List<String> get selectedNames => _selectedNames;

  void toggleNameSelection(String name, bool isSelected) {
    if (isSelected) {
      _selectedNames.add(name);
    } else {
      _selectedNames.remove(name);
    }
    update();
  }

  //Dropdown
  List<String> items = [
    "إدارة التطوير",
    "إدارة الامن السيبراني",
    "إدارة الدرونز",
    "إدارة التسويق",
    "إدارة الموارد البشرية"
  ];
  UnmodifiableListView<String> get item => UnmodifiableListView(items);

  //Dropdown 2
  List<String> names = ["محمد", "نايف", "ندى", "فهد", "سلمان"];
  UnmodifiableListView<String> get name => UnmodifiableListView(names);

  isBookingRoom(int indx) {
    if (rooms[currentIndx]["time"][indx]["is_book"] == "false") {
      rooms[currentIndx]["time"][indx]["is_book"] = "true";
    } else if (rooms[currentIndx]["time"][indx]["is_book"] == "true") {
      rooms[currentIndx]["time"][indx]["is_book"] = "false";
    }
    update();
  }

  void setAddRoom({
    required String roomName,
    required String startTime,
    required String endTime,
  }) {
    rooms[currentIndx]["listOfBooingRese"].add({
      'roomName': roomName,
      'startTime': startTime,
      'endTime': endTime,
    });

    update();
  }

  bookingRoom(int indx) {
    rooms[currentIndx]["time"][indx]["Booked"] = "true";
    update();
  }

  void removeRoom(int index) {
    if (index >= 0 && index < rooms[currentIndx]["listOfBooingRese"].length) {
      rooms[currentIndx]["listOfBooingRese"].removeAt(index);
      update();
    }
  }

  void clearSelectedNames() {
    _selectedNames.clear();
    _selectedValue = null;
    update();
  }
}
