import 'package:flutter/material.dart';

class LandingGradientContainer extends StatelessWidget {
  // const MyWidget({super.key});
  String text;

LandingGradientContainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFBBD5FD),
                    Color(0xFF97B4FC),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'iranSans',
                  color: Colors.white,
                ),
              ),
            );
  }
}