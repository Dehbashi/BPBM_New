import 'package:flutter/material.dart';

class LandingTextTitleWidget extends StatelessWidget {
  // const LandingTextTitleWidget({super.key});
  final title;

  LandingTextTitleWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'iranSans',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
