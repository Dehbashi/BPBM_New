import 'package:flutter/material.dart';

class ReviewNoteBox extends StatefulWidget {
  @override
  _ReviewNoteBoxState createState() => _ReviewNoteBoxState();
}

class _ReviewNoteBoxState extends State<ReviewNoteBox> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'توضیحات',
            style: TextStyle(
              color: Color(0xFF037E85),
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200, // Set the desired height here
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFCDEEF0),
                width: 5.0,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _textEditingController,
                maxLines: null,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'یادداشت خود را اینجا بنویسید',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
