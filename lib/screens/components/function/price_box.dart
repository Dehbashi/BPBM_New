import 'package:intl/intl.dart';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:persian/persian.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home.dart';

class PriceBox extends StatefulWidget {
  final double price;

  const PriceBox({Key? key, required this.price}) : super(key: key);

  @override
  _PriceBoxState createState() => _PriceBoxState();
}

class _PriceBoxState extends State<PriceBox> {
  Future<void> clearData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('questionPrice', 0);
    prefs.setDouble('transportationPrice', 0);
    prefs.setDouble('totalPrice', 0);
  }

  @override
  Widget build(BuildContext context) {
    double initialPrice = widget.price;
    String price = NumberFormat('#,###').format(initialPrice);

    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFFA14A),
      ),
      width: double.infinity,
      height: 100,
      // color: Color(0xFFFFA14A),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'هزینه محاسبه شده تا این لحظه:',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${price.withPersianNumbers()} ریال',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            IconButton(
              tooltip: 'پاکسازی',
              icon: Icon(
                Icons.refresh,
                size: 24,
                color: Colors.white,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Directionality(
                          textDirection: ui.TextDirection.rtl,
                          child: Text(
                            'پاکسازی',
                          ),
                        ),
                        content: Directionality(
                          textDirection: ui.TextDirection.rtl,
                          child: Text(
                              'آیا از پاکسازی و بازگشت به صفحه اصلی روند مطمئن هستید؟'),
                        ),
                        actions: [
                          ElevatedButton(
                            child: Text('خیر'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          ElevatedButton(
                            child: Text('بله'),
                            onPressed: () {
                              clearData();
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
