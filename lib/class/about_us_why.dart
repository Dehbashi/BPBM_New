import 'package:flutter/material.dart';

class AboutUsWhy extends StatelessWidget {
  // const AboutUsWhy({super.key});
  String image;
  String title;
  String text;

  AboutUsWhy({required this.image, required this.text, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            image,
            width: 75,
            height: 75,
            color: Color(0xFF037E85),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF037E85),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
              // style: TextStyle(
              //   color: Color(0xFF025459),
              //   height: 1.5,
              //   fontSize: 16,
              // ),
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
            ),
          ),
        ],
      ),
    );
  }
}
