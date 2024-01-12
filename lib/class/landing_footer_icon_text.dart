import 'dart:ffi';

import 'package:flutter/material.dart';

class LandingFooterIconText extends StatelessWidget {
  // const LandingFooterIconText({super.key});

  final icon;
  final String text;
  final void Function() onTap;

  LandingFooterIconText(
      {required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 45,
            height: 45,
            child: Image.asset(
              '$icon',
              width: 40,
              height: 40,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 20,
            width: 100,
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'iranSans',
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
