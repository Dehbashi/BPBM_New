import 'package:flutter/material.dart';

import './app_title_container.dart';

class RulesTerm extends StatelessWidget {
  // const RulesTerm({super.key});
  String image;
  String title;
  String text;

  RulesTerm({required this.image, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.fitWidth,
              width: double.infinity,
              height: 260,
            ),
          ),
          SizedBox(height: 25),
          AppTitleContainer(text: title),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              text,
              style: TextStyle(
                color: Color(0xFF037E85),
                height: 2.2,
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
            ),
          ),
        ],
      ),
    );
  }
}
