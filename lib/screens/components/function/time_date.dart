import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:persian/persian.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './time_date_button_widget.dart';

class TimeDate extends StatefulWidget {
  // const TimeDate({Key? key}) : super(key: key);
  final void Function(String) onDateSelected;

  const TimeDate({
    required this.onDateSelected,
  });

  @override
  State<TimeDate> createState() => _TimeDateState();
}

class _TimeDateState extends State<TimeDate> {
  String? selectedDate;
  late String savedDate = '';

  List<String> dates = [];

  @override
  void initState() {
    super.initState();
    generateDates();
  }

  void generateDates() {
    final jalaliNow = Jalali.now();

    for (var i = 0; i < 9; i++) {
      final jalaliDate = jalaliNow.addDays(i);
      final persianDate =
          '${getPersianWeekdayName(jalaliDate.weekDay)} ${jalaliDate.year}/${jalaliDate.month}/${jalaliDate.day}';

      if (i == 0) {
        dates.add('امروز: ${persianDate.withPersianNumbers()}');
      } else if (i == 1) {
        dates.add('فردا: ${persianDate.withPersianNumbers()}');
      } else {
        dates.add(persianDate.withPersianNumbers());
      }
    }

    // Set the default selected date to today's date
    setState(() {
      selectedDate = dates[0];
      savedDate = selectedDate ?? '';
    });
  }

  String getPersianWeekdayName(int weekday) {
    switch (weekday % 7) {
      case 0:
        return 'شنبه';
      case 1:
        return 'یکشنبه';
      case 2:
        return 'دوشنبه';
      case 3:
        return 'سه‌شنبه';
      case 4:
        return 'چهارشنبه';
      case 5:
        return 'پنجشنبه';
      case 6:
        return 'جمعه';
      default:
        return '';
    }
  }

  Future<void> savedSelectedDate() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('savedDate', savedDate);
  }

  @override
  Widget build(BuildContext context) {
    print('your saved date inside time date flie is $savedDate');
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xFF9BDCE0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        iconEnabledColor: Color(0xFF037E85),
        icon: Icon(Icons.keyboard_arrow_down),
        isExpanded: true,
        value: selectedDate,
        onChanged: (String? newValue) {
          setState(() {
            selectedDate = newValue;
            savedDate = newValue ?? '';
            savedSelectedDate();
            widget.onDateSelected(savedDate);
          });
        },
        items: dates.map((String date) {
          return DropdownMenuItem<String>(
            value: date,
            child: Text(
              date,
              style: TextStyle(
                color: Color(0xFF037E85),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
