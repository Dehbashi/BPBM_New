import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final text;
  final onPressed;
  Color color;
  IconData? icon;
  Key? key;

  AppElevatedButton({
    required this.text,
    required this.onPressed,
    this.color = const Color(0xFF04A8B2),
    this.icon,
    this.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.85,
      child: ElevatedButton(
        key: key,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: onPressed,
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'iranSans',
                    ),
                  ),
                ],
              )
            : Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: 'iranSans',
                ),
              ),
      ),
    );
  }
}
