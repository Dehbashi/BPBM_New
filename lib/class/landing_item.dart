import 'package:flutter/material.dart';

class LandingItem extends StatelessWidget {
  // const LandingItem({super.key});
  String image;
  String title;
  String text;

  LandingItem({required this.image, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 30,
      ),
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Color(0xFFF8F9FD),
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Image.asset(
            image,
            color: Color(0xFF029EA9),
            width: 56,
            height: 56,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF029EA9),
              fontFamily: 'iranSans',
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFF828484),
              fontSize: 16,
              fontFamily: 'iranSans',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
