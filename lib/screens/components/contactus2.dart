import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/frequentlyaskedpage.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs2 extends StatelessWidget {
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
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Text(
                                    'تماس با بسپارش به ما',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color(0xFF037E85),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'iransans',
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: 40,
                                        width: 360, // Set the desired width
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF04A8B2),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
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
                                                        Animation<double>
                                                            animation,
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
                                                pageBuilder: (BuildContext
                                                        context,
                                                    Animation<double> animation,
                                                    Animation<double>
                                                        secondaryAnimation) {
                                                  return FrequentlyAskedQs2();
                                                },
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'سوالات پر تکرار',
                                            style: TextStyle(
                                              fontFamily: 'iransans',
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 40),
                            Container(
                              width: double.infinity,
                              height: 590,
                              decoration: BoxDecoration(
                                color: Color(0xFFCDEEF0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 60)
                                            .add(
                                      EdgeInsets.only(top: 50),
                                    ),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Icon(
                                          Icons.add_location_alt,
                                          size: 24,
                                          color: Color(0xFF04A8B2),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'نشانی',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF037E85),
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'iransans',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 60)
                                            .add(
                                      EdgeInsets.only(right: 32),
                                    ),
                                    child: Text(
                                      'تهران، بزرگراه شهید خرازی، مجتمع تجاری اداری رز مال ',
                                      style: TextStyle(
                                        color: Color(0xFF04A8B2),
                                        fontFamily: 'iransans',
                                        height: linespacing,
                                        fontSize: textsize,
                                      ),
                                      textAlign: TextAlign.justify,
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 60),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Icon(
                                          Icons.email,
                                          size: 24,
                                          color: Color(0xFF04A8B2),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          ':ایمیل',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF037E85),
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'iransans',
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'info@bpbm.app',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF04A8B2),
                                            // fontWeight: FontWeight.bold,
                                            fontFamily: 'iransans',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 40),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 50),
                                    child: GestureDetector(
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
                                      child: Container(
                                        width: double.infinity,
                                        height: 300,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.phone,
                                              size: 48,
                                              color: Color(0xFF04A8B2),
                                            ),
                                            SizedBox(height: 40),
                                            Text(
                                              'تلفن تماس بسپارش به ما',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xFF037E85),
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'iransans',
                                              ),
                                            ),
                                            SizedBox(height: 40),
                                            Text(
                                              '۰۲۱-۹۱۰۷۷۰۷۷',
                                              style: TextStyle(
                                                fontSize: 36,
                                                color: Color(0xFF04A8B2),
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'iransans',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 40),
                            Container(
                              width: double.infinity,
                              height: 590,
                              decoration: BoxDecoration(
                                color: Color(0xFFCDEEF0),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0,
                                        3), // changes the position of the shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 35)
                                            .add(
                                      EdgeInsets.only(top: 50),
                                    ),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Text(
                                          'با ما در میان بگذارید',
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xFF037E85),
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'iransans',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25),
                                    child: Text(
                                      'اگر موردی هست که لازمه ما بدونیم یا پیگیری کنیم  برای ما پیام ارسال کنید\n'
                                      'پیام شما خیلی سریع  به دست کارشناسای ما میرسه ',
                                      style: TextStyle(
                                        color: Color(0xFF037E85),
                                        fontFamily: 'iransans',
                                        height: linespacing,
                                        fontSize: textsize,
                                      ),
                                      textAlign: TextAlign.justify,
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                ],
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
