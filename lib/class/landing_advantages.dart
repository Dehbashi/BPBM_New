import 'package:flutter/material.dart';

class LandingAdvantages extends StatelessWidget {
  // const LandingAdvantages({super.key});

  final String fontFamily;

  LandingAdvantages(this.fontFamily);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/landing_icons/guarantee.png',
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'گارانتی خدمات',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'iranSans',
                      color: Color(0xFF013F44),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70, left: 10),
                child: Text(
                  'ما همه خدماتمون رو گارانتی می‌کنیم و اگر مشکلی وجود داشته باشه، رایگان درستش می‌کنیم',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF848282),
                    height: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/landing_icons/calculator.png',
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'محاسبه آنی قیمت',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'iranSans',
                      color: Color(0xFF013F44),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70, left: 10),
                child: Text(
                  'برای محاسبه قیمت خدمات کافیه به چند سوال ساده پاسخ بدید تا قیمت نهایی براتون حساب بشه',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF848282),
                    height: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/landing_icons/expert.png',
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'کارشناسان حرفه ای و آموزش دیده',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'iranSans',
                      color: Color(0xFF013F44),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70, left: 10),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 14,
                      color: Color(0xFF848282),
                      height: 2,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '«بسپارش به ما» ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            'کارشناسای حرفه‌ای و با‌سابقه‌ای داره که به خوبی آموزش دیدن',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/landing_icons/place.png',
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'انتخاب زمان و مکان دلخواه',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'iranSans',
                      color: Color(0xFF013F44),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70, left: 10),
                child: Text(
                  'تکنسیسن‌های ما در زمان و مکانی که شما انتخاب کردین بهتون مراجعه می‌کنن',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF848282),
                    height: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/landing_icons/support.png',
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'مشاوره رایگان',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'iranSans',
                      color: Color(0xFF013F44),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70, left: 10),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 14,
                      color: Color(0xFF848282),
                      height: 2,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'مشاوره ',
                      ),
                      TextSpan(
                        text: '«بسپارش به ما» ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            'رایگانه تا بتونید برای مشکلتون بهترین راه‌حل رو پیدا کنید',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
