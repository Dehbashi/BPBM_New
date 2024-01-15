import 'package:flutter/material.dart';
import 'package:persian/persian.dart';

class TotalPriceBox extends StatelessWidget {
  // const TotalPriceBox({super.key});
  final String finalPrice;
  
  TotalPriceBox({required this.finalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
            alignment: Alignment.center,
            child: Text(
              'جمع نهایی: ${finalPrice.toString().withPersianNumbers()} ریال',
              style: TextStyle(
                color: Color(0xFFFFA14A),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}