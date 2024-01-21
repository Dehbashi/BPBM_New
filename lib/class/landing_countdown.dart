import 'dart:async';

import 'package:flutter/material.dart';
import 'package:persian/persian.dart';

class LandingCountdown extends StatefulWidget {
  const LandingCountdown({super.key});

  @override
  State<LandingCountdown> createState() => _LandingCountdownState();
}

class _LandingCountdownState extends State<LandingCountdown> {
  late Timer _timer;
  DateTime _targetDate = DateTime(
      2024, 1, 31, 0, 0, 0); // Change this to your desired target date and time
  Duration _countdownDuration = Duration();

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startCountdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        final currentTime = DateTime.now();
        _countdownDuration = _targetDate.difference(currentTime);
        if (_countdownDuration.isNegative) {
          _timer.cancel();
          _countdownDuration = Duration();
        }
      });
    });
  }

  String _formatTwoDigits(int value) {
    return value.toString().padLeft(2, '0').withPersianNumbers();
  }

  @override
  Widget build(BuildContext context) {
    final days = _countdownDuration.inDays;
    final hours = _countdownDuration.inHours % 24;
    final minutes = _countdownDuration.inMinutes % 60;
    final seconds = _countdownDuration.inSeconds % 60;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            'زمان باقیمانده تا پایان جشنواره',
            style: TextStyle(
              fontFamily: 'iranSans',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF98B4FD),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 50,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFEDF3FF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    DefaultTextStyle(
                      style: TextStyle(
                        color: Color(0xFFBBCEFE),
                        fontSize: 14,
                        fontFamily: 'iranSans',
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('روز'),
                          Text('ساعت'),
                          Text('دقیقه'),
                          Text('ثانیه'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DefaultTextStyle(
                      style: TextStyle(
                        fontFamily: 'iranSans',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '${_formatTwoDigits(days)}',
                            style: TextStyle(
                              color: Color(0xFF98B4FD),
                            ),
                          ),
                          Text(
                            ':',
                            style: TextStyle(
                              color: Color(0xFF98B4FD),
                            ),
                          ),
                          Text(
                            '${_formatTwoDigits(hours)}',
                            style: TextStyle(
                              color: Color(0xFFA9C1FD),
                            ),
                          ),
                          Text(
                            ':',
                            style: TextStyle(
                              color: Color(0xFF98B4FD),
                            ),
                          ),
                          Text(
                            '${_formatTwoDigits(minutes)}',
                            style: TextStyle(
                              color: Color(0xFFB6CAFD),
                            ),
                          ),
                          Text(
                            ':',
                            style: TextStyle(
                              color: Color(0xFF98B4FD),
                            ),
                          ),
                          Text(
                            '${_formatTwoDigits(seconds)}',
                            style: TextStyle(
                              color: Color(0xFFC2D3FD),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 35,
                top: -35,
                child: Image.asset(
                  'assets/landing_images/snow1.png',
                  // fit: BoxFit.cover,
                  width: 70,
                  height: 70,
                ),
              ), 
              Positioned(
                left: 300,
                top: 150,
                child: Image.asset(
                  'assets/landing_images/snow2.png',
                  // fit: BoxFit.cover,
                  width: 70,
                  height: 70,
                ),
              ),  
            ],
          ),
        ],
      ),
    );
  }
}
