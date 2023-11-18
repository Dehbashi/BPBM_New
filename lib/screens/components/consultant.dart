import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/frequentlyaskedpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/header.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:flutter_captcha/flutter_captcha.dart';

class ConsultantPage extends StatefulWidget {
  @override
  State<ConsultantPage> createState() => _ConsultantPageState();
}

class _ConsultantPageState extends State<ConsultantPage> {
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
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.white),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Color(0xFF037E85),
            unselectedItemColor: Color(0xFF037E85),
            selectedLabelStyle: TextStyle(
              fontFamily: 'iransans',
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: 'iransans',
            ),
            showSelectedLabels: true,
            showUnselectedLabels: true,
          )),
      home: Scaffold(
        key: _scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Header(
            onMenuClicked: handleMenuClicked, // Pass the callback function
          ),
        ),
        endDrawer: DrawerPage(),
        body: Container(
          padding: EdgeInsets.all(8).add(EdgeInsets.symmetric(horizontal: 30)),
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
                            Padding(
                              padding: EdgeInsets.only(top: 60),
                              child: Text(
                                'درخواست مشاوره',
                                style: TextStyle(
                                  color: Color(0xFF049768),
                                  fontFamily: 'iransans',
                                  // height: linespacing,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.justify,
                              'کاربرهای عزیز، اگه سوال یا ابهامی دارین، پیشنهاد می‌کنیم اول صفحه پرسش‌های پرتکرار رو ببینین، چون ما اونجا به خیلی از سوال‌هایی که کاربرای عزیمون قبلا پرسیدن، جواب دادیم. اگر جوابتون رو اونجا پیدا نکردین، میتونید شماره تماستون رو ثبت کنید تا کارشناسای ما در کمترین زمان ممکن با شما تماس بگیرن',
                              style: TextStyle(
                                color: Color(0xFF037E85),
                                fontFamily: 'iransans',
                                // height: linespacing,
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 150,
                                  height: 35,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFFF0D55),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    onPressed: () {
                                      // Handle button press
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          transitionDuration:
                                              Duration(milliseconds: 300),
                                          transitionsBuilder:
                                              (BuildContext context,
                                                  Animation<double> animation,
                                                  Animation<double>
                                                      secondaryAnimation,
                                                  Widget child) {
                                            return SlideTransition(
                                              position: Tween<Offset>(
                                                begin: Offset(1.0, 0.0),
                                                end: Offset.zero,
                                              ).animate(animation),
                                              child: child,
                                            );
                                          },
                                          pageBuilder: (BuildContext context,
                                              Animation<double> animation,
                                              Animation<double>
                                                  secondaryAnimation) {
                                            return FrequentlyAskedQs2();
                                          },
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'پرسش های پر تکرار',
                                      style: TextStyle(
                                        fontFamily: 'iransans',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                    'تلفن همراه',
                                    style: TextStyle(
                                      color: Color(0xFF037E85),
                                      fontFamily: 'iransans',
                                      // height: linespacing,
                                      fontSize: 12,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Container(
                                width: double
                                    .infinity, // Set the width of the TextField
                                height: 60, // Set the height of the TextField
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  style: TextStyle(
                                    fontSize: 16,
                                    // color: Color(0xFFA5A3A3),
                                    color: Colors.black,
                                    fontFamily: 'iransans',
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                      top: 5,
                                      right: 15,
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFCDEEF0),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(
                                          messageboxradius),
                                    ),
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFFA5A3A3),
                                      fontFamily: 'iransans',
                                    ),
                                    hintText: '091212345678',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFFF0D55),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                onPressed: () {
                                  // Handle button press
                                },
                                child: Text(
                                  'ارسال اطلاعات',
                                  style: TextStyle(
                                    fontFamily: 'iransans',
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            Text(
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.justify,
                              'همچنین مرکز تماس ما آمادهست که به سوال‌های شما با حوصله جواب بدن. پس منتظر شنیدن صدای گرمتون هستیم. با ما تماس بگیرید',
                              style: TextStyle(
                                color: Color(0xFF037E85),
                                fontFamily: 'iransans',
                                // height: linespacing,
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              onTap: () async {
                                final Uri phoneUri = Uri(
                                  scheme: 'tel',
                                  path: '02191077077',
                                ); // Replace with your phone number
                                if (await canLaunchUrl(phoneUri)) {
                                  await launchUrl(phoneUri);
                                } else {
                                  // Handle error: unable to launch the URL
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    size: 48,
                                    color: Color(0xFF049768),
                                  ),
                                  SizedBox(width: 0),
                                  Text(
                                    '۰۲۱-۹۱۰۷۷۰۷۷',
                                    style: TextStyle(
                                      fontSize: 36,
                                      color: Color(0xFF049768),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'iransans',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 24,
                                  color: Color(0xFF04A8B2),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'info@bpbm.app',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF04A8B2),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'iransans',
                                  ),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
