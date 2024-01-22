import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './header.dart';
import './footer.dart';
import './drawerpage.dart';
import '../../class/text_field_widget.dart';
import '../../class/app_elevated_button.dart';
import './user_enter.dart';
import '../../class/user_sign_in_text_form.dart';

class UserSignInNamePage extends StatefulWidget {
  const UserSignInNamePage({super.key});

  @override
  State<UserSignInNamePage> createState() => _UserSignInNamePageState();
}

class _UserSignInNamePageState extends State<UserSignInNamePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  late String otpCode;
  late String firstName;
  late String lastName;

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  Future<void> SaveName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('firstName', firstName);
    await prefs.setString('lastName', lastName);
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
                Icons.person,
                color: Color(0xFF04A8B2),
                size: 80,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'مشخصات فردی',
                style: TextStyle(
                  color: Color(0xFF037E85),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'iranSans',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: UserSignInTextForm(
                        icon: null,
                        labelText: 'نام',
                        onSaved: (value) {
                          firstName = value ?? '';
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'لطفاً نام خود را وارد نمایید';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: UserSignInTextForm(
                        icon: null,
                        labelText: 'نام خانوادگی',
                        onSaved: (value) {
                          lastName = value ?? '';
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'لطفاً نام خانوادگی خود را وارد نمایید';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      child: AppElevatedButton(
                        text: 'ثبت نام',
                        // key: _formKey,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            SaveName();
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Text('ثبت نام'),
                                    ),
                                    content: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Text(
                                        'آقای/خانم $firstName $lastName \n'
                                        'ثبت نام شما با موفقیت انجام شد.',
                                      ),
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                            Color(0xFF04A8B2),
                                          ),
                                        ),
                                        onPressed: () {
                                          // Navigator.of(context).pop();
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => UserEnter(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'ورود به پنل کاربری',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          }
                          print(
                              'your first name is $firstName and your last name is $lastName');
                        },
                      ),
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
