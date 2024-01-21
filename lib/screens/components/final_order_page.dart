import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../class/final_review_button.dart';

class FinalOrderPage extends StatefulWidget {
  const FinalOrderPage({super.key});

  @override
  State<FinalOrderPage> createState() => _FinalOrderPageState();
}

class _FinalOrderPageState extends State<FinalOrderPage> {
  late String fullName = '';
  late final orderId;

  void initState() {
    super.initState();
    fetchInfo();
  }

  Future<void> fetchInfo() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    final firstName = _prefs.getString('firstName');
    final lastName = _prefs.getString('lastName');

    setState(() {
      fullName = '$firstName $lastName';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 40),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF037E85),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Icon(
                Icons.playlist_add_check_rounded,
                color: Color(0xFF037E85),
                size: 64,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${fullName} عزیز!',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF037E85),
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'سفارش شما با شماره',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF04A8B2),
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'here sits the id',
                style: TextStyle(
                  fontSize: 36,
                  color: Color(0xFFFF0D55),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'با موفقیت ثبت شد',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF04A8B2),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            Text(
              'برای پیگیری سفارش خود می توانید از این بخش استفاده کنید',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF037E85),
              ),
            ),
            FinalReviewButton(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              text: 'پیگیری سفارش',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'اگر سوالی دارید می توانید از فرم تماس برای ارتباط استفاده کنید',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF037E85),
              ),
            ),
            FinalReviewButton(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              text: 'فرم تماس با ما',
            ),
          ]),
        ),
      ],
    );
  }
}
