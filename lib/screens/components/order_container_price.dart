import 'package:flutter/material.dart';

class OrderContainerPrice extends StatelessWidget {
  String? text;
  IconData? icon;
  String price;
  String type;

  OrderContainerPrice({
    required this.type,
    required this.price,
    this.icon,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    Color textColor;

    switch (type) {
      case 'discount':
        textColor = Color(0xFFFFA14A);
        break;
      case 'transportation':
        textColor = Color(0xFF037E85);
        break;
      case 'total':
        textColor = Color(0xFF049768);
        break;
      default:
        textColor = Colors.black; // Assign a default color here
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (text != null)
          Text(
            '$text:',
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        if (icon != null)
          Icon(
            icon,
            color: textColor,
            size: 24,
          ),
        Text(
          price,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}