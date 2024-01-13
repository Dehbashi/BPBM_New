import 'package:intl/intl.dart';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:persian/persian.dart';

class ReviewList extends StatelessWidget {
  final String question;
  final String answer;
  final double price;

  const ReviewList({
    required this.question,
    required this.answer,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    String anPrice = NumberFormat('#,###').format(price);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF04A8B2),
            width: 2,
          ),
        ),
      ),
      child: ListTile(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.comment,
                  color: Color(0xFF037E85),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    '$question',
                    style: TextStyle(
                      color: Color(0xFF037E85),
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Color(0xFF037E85),
                      textDirection: ui.TextDirection.ltr,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(
                        '$answer',
                        style: TextStyle(
                          color: Color(0xFF037E85),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  '${anPrice.withPersianNumbers()} ریال',
                  style: TextStyle(
                    color: Color(0xFF037E85),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
        contentPadding: EdgeInsets.all(10),
      ),
    );
  }
}
