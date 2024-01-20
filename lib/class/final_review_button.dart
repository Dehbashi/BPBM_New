import 'package:flutter/material.dart';

class FinalReviewButton extends StatelessWidget {
  // const FinalReviewButton({super.key});
  final text;
  final fontWeight;
  final double fontSize;

  FinalReviewButton(
      {required this.fontSize, required this.fontWeight, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF06C98B),
        borderRadius: BorderRadius.circular(5),
      ),
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFF06C98B)),
          // overlayColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        child: Text(
          '$text',
          style: TextStyle(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: Colors.white,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
