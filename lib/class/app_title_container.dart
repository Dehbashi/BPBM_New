import 'package:flutter/material.dart';

class AppTitleContainer extends StatelessWidget {
  final String text;
  final IconData? icon;

  AppTitleContainer({required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: IntrinsicWidth(
          // Wrap Row with IntrinsicWidth
          child: Row(
            children: [
              if (icon != null)
                Icon(
                  icon,
                  color: Color(0xFF025459),
                  size: 24,
                ),
              if (icon != null)
                SizedBox(
                  width: 10,
                ),
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.titleLarge,
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
