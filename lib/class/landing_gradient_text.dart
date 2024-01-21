import 'package:flutter/material.dart';

import './gradient_text.dart';

class LandingGradientText extends StatelessWidget {
  const LandingGradientText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: -30,
          top: -40,
          child: Image.asset(
            'assets/landing_images/snow.png',
            // fit: BoxFit.cover,
            width: 70,
            height: 70,
          ),
        ),
        GradientText(
          'جشنواره ویژه زمستانه',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'iranSans',
            fontWeight: FontWeight.bold,
          ),
          gradient: LinearGradient(colors: [
            Color(0xFFBBD5FD),
            Color(0xFF97B4FC),
          ]),
        ),
      ],
    );
  }
}
