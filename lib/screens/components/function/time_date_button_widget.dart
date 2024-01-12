import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TimeDateButtonWidget extends StatefulWidget {
  // const TimeDateButtonWidget({super.key});
  final void Function(String) onTimeSelected;

  const TimeDateButtonWidget({
    required this.onTimeSelected,
  });

  @override
  State<TimeDateButtonWidget> createState() => _TimeDateButtonWidgetState();
}

class _TimeDateButtonWidgetState extends State<TimeDateButtonWidget> {
  bool isSelectedMorning = false;
  bool isSelectedAfternoon = false;
  final String morning = 'صبح\nاز ساعت 08:00\nتا ساعت 13:00';
  final String afternoon = 'عصر\nاز ساعت 13:00\nتا ساعت 18:00';
  late String savedTime = '';

  Future<void> savedSelectedTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('savedTime', savedTime);
  }

  @override
  Widget build(BuildContext context) {
    print('save selected time is $savedTime');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 150,
          decoration: BoxDecoration(
            color: isSelectedMorning
                ? Color(0xFF04A8B2)
                : Color(
                    0xFF68CBD1), // Customize the background color of the unselected button
            borderRadius: BorderRadius.circular(5),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () {
              setState(() {
                isSelectedMorning = true;
                isSelectedAfternoon = false;
                savedTime = morning;
                savedSelectedTime();
                widget.onTimeSelected('صبح از ساعت 08:00 تا ساعت 13:00');
              });
            },
            child: Text(
              morning,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 2),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          width: 150,
          decoration: BoxDecoration(
            color: isSelectedAfternoon
                ? Color(0xFF04A8B2)
                : Color(
                    0xFF68CBD1), // Customize the background color of the unselected button
            borderRadius: BorderRadius.circular(5),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () {
              setState(() {
                isSelectedMorning = false;
                isSelectedAfternoon = true;
                savedTime = afternoon;
                savedSelectedTime();
                widget.onTimeSelected('عصر از ساعت 13:00 تا ساعت 18:00');
              });
            },
            child: Text(
              afternoon,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 2),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
