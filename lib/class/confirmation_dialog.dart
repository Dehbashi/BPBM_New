import 'package:flutter/material.dart';

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onConfirm;

  ConfirmationDialog({
    required this.title,
    required this.message,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Directionality(
        textDirection: TextDirection.rtl,
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF037E85),
          ),
        ),
      ),
      content: Directionality(
        textDirection: TextDirection.rtl,
        child: Text(
          message,
          style: TextStyle(
            color: Color(0xFF037E85),
          ),
        ),
      ),
      actions: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.red,
            ),
          ),
          child: Text(
            'خیر',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.pop(context); // Close the dialog
          },
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(0xFF04A8B2),
            ),
          ),
          child: Text(
            'بله',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: onConfirm,
        ),
      ],
    );
  }
}
