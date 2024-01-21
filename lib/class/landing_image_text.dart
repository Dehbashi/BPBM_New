import 'package:flutter/material.dart';

import 'landing_discount.dart';

class LandingImageText extends StatelessWidget {
  // const LandingImageText({super.key});
  String image;
  String text;

  LandingImageText({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(image),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'iranSans',
                  fontSize: 16,
                  color: Color(0xFF828484),
                  height: 2.2,
                ),
                children: [
                  TextSpan(
                    text: 'در جشنواره زمستانه ',
                  ),
                  TextSpan(
                    text: '((بسپارش به ما)) ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'شما می توانید با ثبت سفارش خدمات $text، $discountDate از ',
                  ),
                  WidgetSpan(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        alignment: Alignment.center,
                        width: 170,
                        height: 30,
                        color: Color(0xFF9AB6FD),
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        // margin: EdgeInsets.symmetric(horizontal: 3),
                        child: Text(
                          '$discountRate درصد تخفیف ویژه',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'iranSans',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  TextSpan(
                    text: ' بهره مند بشید.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
