import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:persian/persian.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './time_date_button_widget.dart';
import '../../../class/date_response.dart';

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
  DateResponse? dateResponse;

  @override
  void initState() {
    super.initState();
    // generateDates();
    fetchDates();
  }

  Future<void> fetchDates() async {
    final headers = {
      'Tokenpublic': 'bpbm',
      'Content-Type': 'application/json',
    };

    final response = await http.get(
      Uri.parse('https://s1.lianerp.com/api/public/calculation/date'),
      headers: headers,
    );
    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      dateResponse =
          DateResponse.fromJson(jsonBody); // Remove the 'final' keyword

      setState(() {
        dates = dateResponse!.dates.map((date) => date.title).toList();
        selectedDate = dates[0];
        savedDate = selectedDate ?? '';
      });
    } else {
      // Handle API error
      print('Failed to fetch dates. Status code: ${response.statusCode}');
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
          final index = dates.indexOf(date);
          final selectedDateItem =
              dateResponse?.dates[index]; // Add a null check using `?`
          final title = selectedDateItem?.title ?? '';
          final text = selectedDateItem?.text ?? '';
          return DropdownMenuItem<String>(
            value: date,
            child: Text(
              '$title - $text',
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
