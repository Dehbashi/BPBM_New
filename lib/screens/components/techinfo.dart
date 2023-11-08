import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:url_launcher/url_launcher.dart';


class TechInfo extends StatelessWidget {
  final double textpadding = 12;
  final double headingpadding = 12;
  final double imageradius = 15;
  final double linespacing = 2.2;
  final double textsize = 16;
  final double headingsize = 24;
  final double bottomiconsize = 75;
  final double _buttonwidth = 170;
  final double _buttonheight = 50;

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
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo.png',
            width: 121,
            height: 68,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu, color: Colors.grey),
              onPressed: () {
                //opendrawer
              },
            )
          ],
        ),
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
                            Padding(
                              padding:
                              EdgeInsets.only(top: 60),
                              child: Text(
                                'تکنیسین برق هستید؟',
                                style: TextStyle(
                                  color: Color(0xFF06C98B),
                                  fontFamily: 'iransans',
                                  // height: linespacing,
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'بسپارش به ما میتونه راه جدیدی برای کسب  درآمد شما باشه',
                              style: TextStyle(
                                color: Color(0xFF037E85),
                                fontFamily: 'iransans',
                                // height: linespacing,
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 60),
                            SizedBox(
                              width:_buttonwidth,
                            height: _buttonheight,
                            child:
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFFF0D55),
                                // fixedSize:
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(4)),
                              ),
                              onPressed: () {
                                // Handle button press
                              },
                              child: Text(
                                'شروع ثبت نام',
                                style: TextStyle(
                                  fontFamily: 'iransans',
                                  fontSize: 15,
                                ),
                              ),
                            ),
              ),
                            SizedBox(height: 130),
                            Text(
                              'مجله بسپارش به ما',
                              style: TextStyle(
                                color: Color(0xFF06C98B),
                                fontFamily: 'iransans',
                                // height: linespacing,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'آگاهی از آخرین خبرها در حوزه صنعت برق ساختمان',
                              style: TextStyle(
                                color: Color(0xFF037E85),
                                fontFamily: 'iransans',
                                // height: linespacing,
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 60),
                            SizedBox(
                              width:_buttonwidth,
                              height: _buttonheight,
                              child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFFF0D55),
                                  // fixedSize:
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(4)),
                                ),
                                onPressed: () async {
                                  // Handle button press
                                  const url = 'https://blog.bespareshbema.com/'; // Replace with your desired website URL
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: Text(
                                  'خواندن مطالب',
                                  style: TextStyle(
                                    fontFamily: 'iransans',
                                    fontSize: 15,
                                  ),
                                ),
                              ),
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
