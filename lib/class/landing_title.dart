import 'package:flutter/material.dart';

class LandingTitle extends StatelessWidget {
  final String text;

  LandingTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      // padding: EdgeInsets.symmetric(horizontal: 18),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: IntrinsicWidth(
          // Wrap Row with IntrinsicWidth
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/landing_images/title_box.png'),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'iranSans',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
