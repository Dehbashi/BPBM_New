import 'package:flutter/material.dart';

class LandingContainerImageText extends StatelessWidget {
  // const LandingContainerImageText({super.key});
  String image;
  String title;
  String text;

  LandingContainerImageText(
      {required this.image, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFDADBDB),
          width: 2,
        ),
        color: Color(0xFFF8F9FD),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ClipRRect(
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(0),
            //   topRight: Radius.circular(0),
            // ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFF012224),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'iranSans',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: Color(0xFF828484),
                    fontSize: 14,
                    fontFamily: 'iranSans',
                    height: 2.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
