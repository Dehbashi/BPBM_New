import 'package:flutter/material.dart';

class LandingElevatedButton extends StatelessWidget {
  // const AppElevatedButton({super.key});
  final text;
  final onPressed;

  LandingElevatedButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.85, // Set the desired width
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF04A8B2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontFamily: 'iranSans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
  }
}
