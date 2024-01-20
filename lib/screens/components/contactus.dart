import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

import './footer.dart';
import './frequentlyaskedpage.dart';
import './header.dart';
import './drawerpage.dart';
import '../../class/app_title_container.dart';
import '../../class/contact_us_address.dart';
import '../../class/contact_us_message.dart';
import '../../class/app_elevated_button.dart';

class ContactUs extends StatefulWidget {
  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final double textpadding = 15;

  final double headingpadding = 18;

  final double imageradius = 15;

  final double linespacing = 2.2;

  final double textsize = 16;

  final double headingsize = 24;

  final double bottomiconsize = 75;

  final double answerpadding = 30;

  final double questionboxpadding = 8;

  final double questionboxborderradius = 7;

  final double messageboxradius = 10;

  String _text = '';

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 16),
                          AppTitleContainer(text: 'تماس با بسپارش به ما'),
                          SizedBox(height: 16),
                          Container(
                            width: double.infinity,
                            height: 575,
                            decoration: BoxDecoration(
                              color: Color(0xFFCDEEF0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(imageradius),
                                  child: Image.asset(
                                    'assets/images/contactus1.png',
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                    height: 220,
                                  ),
                                ),
                                SizedBox(height: 25),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: textpadding),
                                  child: Text(
                                    'کاربران عزیز، اگه سوال یا ابهامی دارین، پیشنهاد می‌کنیم اول صفحه پرسش‌های متداول رو ببینین، چون ما اونجا به خیلی از سوال‌هایی که برای کاربرهامون به‌وجود می‌آد جواب دادیم. اگر جوابتون رو اونجا پیدا نکردین، با ما تماس بگیرین. کارشناس‌های ما آماده هستن که به سوال‌های شما با حوصله جواب بدن. منتظر شنیدن صدای گرمتون هستیم.',
                                    style: TextStyle(
                                      color: Color(0xFF025459),
                                      fontFamily: 'iransans',
                                      height: linespacing,
                                      fontSize: textsize,
                                    ),
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                                SizedBox(height: 20),
                                AppElevatedButton(
                                  text: 'سوالات پر تکرار',
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            FrequentlyAskedQs2(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40),
                          ContactUsAddress(),
                          SizedBox(height: 40),
                          ContactUsMessage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
