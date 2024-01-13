import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:persian/persian.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DiscountBox extends StatefulWidget {
  @override
  _DiscountBoxState createState() => _DiscountBoxState();
}

class _DiscountBoxState extends State<DiscountBox> {
  final discountController = TextEditingController();
  String enteredDiscount = '';
  num totalPrice = 0.0;
  double? price = 0.0;
  String discountedPrice = '';

  void initState() {
    super.initState();
    fetchTotalPrice();
  }

  @override
  void dispose() {
    discountController.dispose();
    super.dispose();
  }

  Future<void> fetchTotalPrice() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    setState(() {
      totalPrice = _prefs.getDouble('totalPrice') ?? 0.0;
    });
  }

  void finalPrice() {
    setState(() {
      price = double.parse(enteredDiscount) / 100 * totalPrice;
      discountedPrice = NumberFormat('#,###').format(price);
    });
  }

  @override
  Widget build(BuildContext context) {
    // String discPrice = NumberFormat('#,###').format(discountPercentage);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'اگر کد تخفیف دارید اینجا ثبت کنید.',
            style: TextStyle(
              color: Color(0xFF037E85),
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(
              right: 5,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xFFCDEEF0),
              border: Border.all(
                color: Color(0xFF037E85),
                width: 2,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 6,
                      child: TextFormField(
                        controller: discountController,
                        onChanged: (value) {
                          setState(() {
                            enteredDiscount = value;
                          });
                        },
                        decoration: InputDecoration(),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFF06C98B),
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        child: Text(
                          'ثبت کد تخفیف',
                          style: TextStyle(
                            color: Color(0xFFCDEEF0),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        onPressed: () {
                          finalPrice();
                          // Use the enteredDiscount variable here
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'تخفیف: $discountedPrice ریال',
              style: TextStyle(
                color: Color(0xFFFFA14A),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}