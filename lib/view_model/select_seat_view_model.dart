import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SelectSeatViewModel extends GetxController {
  final List<String> _dateList = [
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15"
  ];

  List<String> get dateList => _dateList;

  int _selectedDate = 0;
  int get selectedDate => _selectedDate;

  setSelectedDate(int date) {
    _selectedDate = date;
    refresh();
  }

  int _selectedSeat = 0;
  int get selectedSeat => _selectedSeat;

  setSelectedSeat(int seat) {
    _selectedSeat = seat;
    refresh();
  }
}
