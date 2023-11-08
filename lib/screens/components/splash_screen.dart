import 'dart:ui';
import 'dart:async';
import 'package:bpbm2/screens/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF9EDCE0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 262,
                      height: 147,
                    ),
                    Text(
                      'خدمات تخصصی برق و ساختمان',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'iranSans',
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF037E85),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'ورژن 1.1.0',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'iranSans',
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF037E85),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 400,
              height: 127,
              decoration: BoxDecoration(
                color: const Color(0xFF037E85),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/discount.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'جشنواره شروع فصل پاییز',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'iranSans',
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}