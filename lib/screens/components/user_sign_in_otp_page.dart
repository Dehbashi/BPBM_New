import 'package:get_ip_address/get_ip_address.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter/services.dart';
import 'package:persian/persian.dart';

import './header.dart';
import './footer.dart';
import './drawerpage.dart';
import '../../class/get_user_agent.dart';
import '../../class/text_field_widget.dart';
import '../../class/app_elevated_button.dart';
import '../../class/send_phone_number.dart';
import '../../class/user_sign_in_verify_otp.dart';

class UserSignInOtpPage extends StatefulWidget {
  // const UserSignInOtpPage({super.key});
  final String cellNumber;
  final String ip;
  final String userAgent;

  UserSignInOtpPage(
      {required this.cellNumber, required this.ip, required this.userAgent});

  @override
  State<UserSignInOtpPage> createState() => _UserSignInOtpPageState();
}

class _UserSignInOtpPageState extends State<UserSignInOtpPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late String otpCode;
  late String cellNumber = widget.cellNumber;
  late String ip = widget.ip;
  late String userAgent = widget.userAgent;
  final _formKey2 = GlobalKey<FormState>();

  int countdownDuration = 90;
  Timer? timer;
  late String text = '';
  bool countdownFinished = false;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startCountdown() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (countdownDuration > 0) {
          countdownDuration--;
          countdownFinished = false;
          text =
              'ارسال مجدد کد فعالسازی: ${countdownDuration.toString().withPersianNumbers()}';
        } else {
          timer.cancel();
          text = 'برای ارسال مجدد کد کلیک کنید';
          countdownFinished = true;
        }
      });
    });
  }

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Header(
          onMenuClicked: handleMenuClicked, // Pass the callback function
        ),
      ),
      endDrawer: DrawerPage(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.75,
          decoration: BoxDecoration(
            color: Color(0xFFCDEEF0),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Icon(
                Icons.verified_user_outlined,
                color: Color(0xFF04A8B2),
                size: 80,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
              child: Text(
                'کد فعالسازی پیامک شده به شماره',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF025459),
                  fontFamily: 'iranSans',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                cellNumber.withPersianNumbers(),
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF037E85),
                  fontFamily: 'iranSans',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'رو وارد کنید',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF025459),
                  fontFamily: 'iranSans',
                ),
              ),
            ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: OtpTextField(
                  numberOfFields: 5,
                  filled: true,
                  fillColor: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  fieldWidth: 50,
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {},
                  onSubmit: (String verificationCode) {
                    otpCode = verificationCode;
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              AppElevatedButton(
                text: 'اعتبارسنجی کد فعالسازی',
                onPressed: () {
                  UserSignInVerifyOtp(
                    context,
                    ip,
                    cellNumber,
                    userAgent,
                    otpCode,
                  );
                },
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    if (countdownFinished) {
                      SendPhoneNumber(context, ip, cellNumber, userAgent);
                      setState(() {
                        countdownFinished = false;
                        text = 'برای ارسال مجدد کد کلیک کنید';
                        print('clicked');
                      });
                    }
                  },
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF037E85),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
