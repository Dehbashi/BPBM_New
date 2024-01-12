import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:persian/persian.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'function/fetch_transportation_price.dart';

class TransportationBox extends StatefulWidget {
  final String districtNumber;

  const TransportationBox({
    Key? key,
    required this.districtNumber,
  }) : super(key: key);

  @override
  _TransportationBoxState createState() => _TransportationBoxState();
}

class _TransportationBoxState extends State<TransportationBox> {
  final fetchTransportation = FetchTransportationPrice();
  late String districtNumber;
  late int transportationPrice = 0;

  @override
  void initState() {
    super.initState();
    districtNumber = widget.districtNumber;
    fetchTransportationFee();
    // clearTransportationPrice();
  }

  @override
  void didUpdateWidget(TransportationBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.districtNumber != districtNumber) {
      districtNumber = widget.districtNumber;
      fetchTransportationFee();
    }
  }

  Future<void> fetchTransportationFee() async {
    if (districtNumber.isNotEmpty) {
      final districtData =
          await fetchTransportation.fetchTransPrice(districtNumber);
      print('Your district data inside TransportationBox is $districtData');
      setState(() {
        transportationPrice = districtData;
      });
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setDouble(
        'transportationPrice',
        transportationPrice.toDouble(),
      );
    } else {
      print('Mission failed!');
    }
  }

  // Future<void> clearTransportationPrice() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setDouble('transportationPrice', 0);
  // }

  @override
  Widget build(BuildContext context) {
    String trPrice = NumberFormat('#,###').format(transportationPrice);

    print(
        'your district number inside transportation box is ${widget.districtNumber}');
    return Container(
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF06C98B),
          width: 3,
        ),
      ),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   color: Color(0xFFFFA14A),
      // ),
      width: double.infinity,
      height: 100,
      // color: Color(0xFFFFA14A),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.airport_shuttle,
              size: 32,
              color: Color(0xFF06C98B),
            ),
            Text(
              trPrice.withPersianNumbers(),
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF06C98B),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
