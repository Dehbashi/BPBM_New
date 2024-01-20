import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  // const ButtonWidget({super.key});

  final void Function()? onPressedNext;
  final void Function()? onPressedPrevious;
  final bool steppingEnabled;
  final int activeStep;
  late String text = '';

  ButtonWidget(
      {required this.onPressedNext,
      required this.onPressedPrevious,
      required this.steppingEnabled,
      required this.activeStep,
      });


  @override
  Widget build(BuildContext context) {
    if (activeStep == 4) {
      text = 'ثبت نهایی';
    } else {
      text = 'رفتن به مرحله بعد';
    }

    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFA14A),
              borderRadius: BorderRadius.circular(10),
            ),
            width: MediaQuery.devicePixelRatioOf(context),
            child: TextButton(
              onPressed: onPressedPrevious,
              child: Text(
                'بازگشت به مرحله قبل',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(
              color: steppingEnabled ? Color(0xFF04A8B2) : Colors.grey,
              // color: Color(0xFF04A8B2),
              borderRadius: BorderRadius.circular(10),
            ),
            width: MediaQuery.devicePixelRatioOf(context),
            child: TextButton(
              onPressed: steppingEnabled ? onPressedNext : null,
              // onPressed:onPressedNext,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
