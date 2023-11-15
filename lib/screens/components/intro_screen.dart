import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:bpbm2/screens/components/header.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(0xFF9BDCE0),
      pages: [
        PageViewModel(
          title: 'سرویس یا خدمت مورد نظر خودتون رو انتخاب کنید',
          bodyWidget: Text('llllll'),
          image: Center(
              child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/intro/price2.png",
              width: 258,
              height: 300,
            ),
          )),
          decoration: const PageDecoration(
              safeArea: 100,
              imageAlignment: Alignment.center,
              bodyAlignment: Alignment.center,
              contentMargin:
                  const EdgeInsets.symmetric(horizontal: 60, vertical: 100),
              bodyFlex: 2,
              imageFlex: 3,
              titleTextStyle: TextStyle(
                fontSize: 20,
                fontFamily: 'iranSans',
                fontWeight: FontWeight.bold,
                color: Color(0xFF037E85),
              )),
        ),
        PageViewModel(
          title: 'زمان و مکان درخواست سرویس خودتون را تعیین کنید',
          bodyWidget: Text('llllll'),
          image: Center(
              child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/intro/price3.png",
              width: 258,
              height: 300,
            ),
          )),
          decoration: const PageDecoration(
              safeArea: 100,
              imageAlignment: Alignment.center,
              bodyAlignment: Alignment.center,
              contentMargin:
                  const EdgeInsets.symmetric(horizontal: 60, vertical: 100),
              bodyFlex: 2,
              imageFlex: 3,
              titleTextStyle: TextStyle(
                fontSize: 20,
                fontFamily: 'iranSans',
                fontWeight: FontWeight.bold,
                color: Color(0xFF037E85),
              )),
        ),
        PageViewModel(
          title: 'یه چای یا قهوه برای خودتون بریزید و بقیه کارها رو ...',
          bodyWidget: Text('llllll'),
          image: Center(
              child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/intro/price1.png",
              width: 258,
              height: 300,
            ),
          )),
          decoration: const PageDecoration(
              safeArea: 100,
              imageAlignment: Alignment.center,
              bodyAlignment: Alignment.center,
              contentMargin:
                  const EdgeInsets.symmetric(horizontal: 60, vertical: 100),
              bodyFlex: 2,
              imageFlex: 3,
              titleTextStyle: TextStyle(
                fontSize: 20,
                fontFamily: 'iranSans',
                fontWeight: FontWeight.bold,
                color: Color(0xFF037E85),
              )),
        ),
      ],
      done: Text('رد کردن'),
      onDone: () {},
      showNextButton: false,
      showSkipButton: false,
      showDoneButton: false,
      skip: Text('رد کردن'),
    );
  }
}
