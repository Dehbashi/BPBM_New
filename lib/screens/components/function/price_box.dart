import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:persian/persian.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                clearData();
              },
            ),
          ],
        ),
      ),
    );
  }
}
