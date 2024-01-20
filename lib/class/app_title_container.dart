import 'package:flutter/material.dart';

class AppTitleContainer extends StatelessWidget {
  // const AppTitleContainer({super.key});
  final text;

  AppTitleContainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.right,
      ),
    );
  }
}
