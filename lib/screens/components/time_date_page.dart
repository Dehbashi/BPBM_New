import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './price_box.dart';
import '../components/function/time_date.dart';
import '../components/function/time_date_button_widget.dart';

class TimeDatePage extends StatefulWidget {
  // const TimeDatePage({super.key});
  final Function(bool) onStepCompleted;

  TimeDatePage({required this.onStepCompleted});

  @override
  State<TimeDatePage> createState() => _TimeDatePageState();
}

class _TimeDatePageState extends State<TimeDatePage> {
  late String? selectedTime = '';
  late String? selectedDate = '';

   @override
  void initState() {
    super.initState();
    disableStep();
  }

  void disableStep() {
    widget.onStepCompleted(false);
  }

  void handleTimeSelected(String time) {
  setState(() {
    selectedTime = time;
    checkStepCompletion();
  });
}

  void handleDateSelected(String date) {
  setState(() {
    selectedDate = date;
    checkStepCompletion();
  });
}

void checkStepCompletion() {
  if (selectedDate != null && selectedTime != null && selectedDate!.isNotEmpty && selectedTime!.isNotEmpty) {
    widget.onStepCompleted(true);
  } else {
    widget.onStepCompleted(false);
  }
}

  @override
  Widget build(BuildContext context) {
    print('Build method called!');
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // PriceBox(price: 0),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'انتخاب زمان سرویس',
                    style: TextStyle(
                      color: Color(0xFF037E85),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'دوست دارید چه زمانی کارشناس بسپارش به شما مراجعه کنه؟',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF037E85),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFF04A8B2),
                ),
              ),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TimeDate(onDateSelected: handleDateSelected),
                  SizedBox(
                    height: 40,
                  ),
                  TimeDateButtonWidget(
                    onTimeSelected: handleTimeSelected,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(right: 15),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFFFA14A),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'زمان انتخاب شده شما:',
                    style: TextStyle(
                      color: Color(0xFFFFA14A),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${selectedDate ?? ''} ${selectedTime ?? ''}',
                    style: TextStyle(
                      color: Color(0xFFFFA14A),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
