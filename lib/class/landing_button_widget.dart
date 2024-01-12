import 'package:flutter/material.dart';

class LandingButtonWidget extends StatelessWidget {
  // const ButtonWidget({super.key});
  final String title;
  final bool hasBorder;
  final double width;
  final double height;
  LandingButtonWidget(
      {required this.title,
      required this.hasBorder,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: hasBorder ? Colors.white : Color(0xFF029EA9),
            borderRadius: BorderRadius.circular(10),
            border: hasBorder
                ? Border.all(color: Color(0xFF029EA9))
                : Border.fromBorderSide(BorderSide.none)),
        height: height,
        width: width,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: hasBorder ? Color(0xFF029EA9) : Colors.white,
              fontFamily: 'iranSans',
              fontSize: 20,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
