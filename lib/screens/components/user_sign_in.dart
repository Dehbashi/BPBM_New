import 'package:get_ip_address/get_ip_address.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './header.dart';
import './footer.dart';
import './drawerpage.dart';
import '../../class/get_user_agent.dart';
import '../../class/text_field_widget.dart';
import '../../class/app_elevated_button.dart';
import '../../class/send_phone_number.dart';
import './user_sign_in_otp_page.dart';
import '../../class/user_sign_in_text_form.dart';

class UserSignIn extends StatefulWidget {
  const UserSignIn({super.key});

  @override
  State<UserSignIn> createState() => _UserSignInState();
}

class _UserSignInState extends State<UserSignIn> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late String cellNumber;
  final _formKey = GlobalKey<FormState>();
  late String mainOtpCode;
  late String mainIpAddress;
  late String userAgent;

  Future<void> saveUserAgent() async {
    // late String? userAgent;
    try {
      userAgent = await GetUserAgent.getUserAgent();
    } on PlatformException catch (e) {
      print('Failed to get user agent: ${e.message}');
    }

    if (userAgent != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('userAgent', userAgent);
    }

    setState(() {
      userAgent = userAgent!;
    });
  }

  void getIP() async {
    try {
      var ipAddress = IpAddress(type: RequestType.json);
      dynamic data = await ipAddress.getIpAddress();
      String ipAddressString = data['ip'];
      mainIpAddress = ipAddressString;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('ip', mainIpAddress);
    } on IpAddressException catch (exception) {
      print(exception.message);
    }
  }

  @override
  void initState() {
    super.initState();
    saveUserAgent();
    getIP();
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
              Image.asset(
                'assets/images/logo.png',
                width: 204,
                height: 100,
              ),
              Icon(
                Icons.lock,
                color: Color(0xFF04A8B2),
                size: 48,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'ورود کاربر',
                style: TextStyle(
                  color: Color(0xFF037E85),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'iranSans',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'کاربر گرامی!\n'
                'به سامانه بسپارش به ما خوش آمدید!\n'
                'شماره تلفن همراه خود را با قرار دادن صفحه کلید روی زبان انگلیسی وارد کنید',
                style: TextStyle(
                  color: Color(0xFF037E85),
                  fontSize: 14,
                  fontFamily: 'iranSans',
                ),
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      child: UserSignInTextForm(
                        keyboardType: TextInputType.number,
                        labelText: '09123456789',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'لطفاً شماره تلفن خود را وارد نمایید';
                          } else if (!value.startsWith('09')) {
                            return 'شماره تلفن باید با 09 آغاز شود';
                          } else if (value.length != 11) {
                            return 'شماره تلفن باید 11 رقمی باشد';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          cellNumber = value ?? '';
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    AppElevatedButton(
                      text: 'ارسال کد فعالسازی',
                      // key: _formKey,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          SendPhoneNumber(
                            context,
                            mainIpAddress,
                            cellNumber,
                            userAgent,
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserSignInOtpPage(
                                cellNumber: cellNumber,
                                ip: mainIpAddress,
                                userAgent: userAgent,
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ],
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
