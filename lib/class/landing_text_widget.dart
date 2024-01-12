import 'package:flutter/material.dart';

class LandingTextWidget extends StatelessWidget {
  const LandingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          color: Color(0xFF848282),
          fontSize: 14,
          fontFamily: 'iranSans',
          height: 2.5,
        ),
        children: <TextSpan>[
          TextSpan(
            text: '«بسپارش به ما» ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text:
                'یه سامانه آنلاین ارائه خدمات تخصصی برقه که علاوه بر استفاده از کارشناسای متخصص، خدماتش رو گارانتی هم می‌کنه',
          ),
        ],
      ),
    );
  }
}
