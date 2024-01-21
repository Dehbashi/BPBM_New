import 'package:flutter/material.dart';

class DrawerPageQuickLink extends StatelessWidget {
  // const DrawerPageQuickLink({super.key});
  String title;
  final onPressed;

  DrawerPageQuickLink({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF037E85),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
