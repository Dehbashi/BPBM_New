import 'package:flutter/material.dart';

class ContactUsMessageTextfield extends StatefulWidget {
  // const ContactUsMessageTextfield({super.key});
  String text;
  double height;
  String condition;

  ContactUsMessageTextfield(
      {required this.text, required this.height, this.condition = 'shortTextField'});

  @override
  State<ContactUsMessageTextfield> createState() =>
      _ContactUsMessageTextfieldState();
}

class _ContactUsMessageTextfieldState extends State<ContactUsMessageTextfield> {
  @override
  Widget build(BuildContext context) {
    if (widget.condition == 'longTextField') {
      return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          width: double.infinity, // Set the width of the TextField
          height: widget.height, // Set the height of the TextField
          child: TextField(
            textAlignVertical: TextAlignVertical.top,
            style: TextStyle(
              fontSize: 16,
              // color: Color(0xFFA5A3A3),
              color: Colors.black,
            ),
            maxLines: null,
            expands: true,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                top: 10,
                right: 15,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              hintStyle: TextStyle(
                fontSize: 16,
                color: Color(0xFFA5A3A3),
              ),
              hintText: widget.text,
            ),
          ),
        ),
      );
    } else {
      return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          width: double.infinity, // Set the width of the TextField
          height: widget.height, // Set the height of the TextField
          child: TextField(
            style: TextStyle(
              fontSize: 16,
              // color: Color(0xFFA5A3A3),
              color: Colors.black,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                top: 5,
                right: 15,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              hintStyle: TextStyle(
                fontSize: 16,
                color: Color(0xFFA5A3A3),
              ),
              hintText: widget.text,
            ),
          ),
        ),
      );
    }
  }
}
