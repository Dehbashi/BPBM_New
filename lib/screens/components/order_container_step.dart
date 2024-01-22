import 'package:flutter/material.dart';

class OrderContainerStep extends StatelessWidget {
  // const OrderContainerStep({super.key});
  String text;

  OrderContainerStep({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check_circle,
          color: Color(0xFF06C98B),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF037E85),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
