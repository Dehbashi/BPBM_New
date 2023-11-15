//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
// import 'package:bpbm2/screens/components/header.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:bpbm2/screens/components/header.dart';
import 'package:bpbm2/screens/components/profiledrawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This widget is the root of your application.
  final double _iconsize = 55;

  final double _iconspace = 95;

  final double _fontsize = 13;

  final double textboxwidth = 90;

  final double textboxheight = 40;

  final Map<Image, String> images1 = {
    Image.asset('assets/icons/homeicons/nasbeanten.png'):
        'نصب آنتن و آنتن مرکزی',
    Image.asset('assets/icons/homeicons/nasbeiphon.png'):
        'نصب و تعمیر انواع آیفون',
    Image.asset('assets/icons/homeicons/nasbekoolergazi.png'):
        'نصب و سرویس کولر گازی',
    Image.asset('assets/icons/homeicons/nasbekoolerabi.png'):
        'نصب و سرویس کولر آبی',
    Image.asset('assets/icons/homeicons/nasbeups.png'): 'نصب و تعمیر UPS انواع',
    Image.asset('assets/icons/homeicons/nasbekelid.png'):
        'نصب انواع کلید و پریز',
    Image.asset('assets/icons/homeicons/simkeshi.png'): 'سیم کشی و کابل کشی',
    Image.asset('assets/icons/homeicons/nasbedoorbin.png'):
        'نصب دوربین مداربسته',
    Image.asset('assets/icons/homeicons/santral.png'):
        'خدمات سانترال و تلفن های وویپ',
    Image.asset('assets/icons/homeicons/simtelephone.png'): 'سیم کشی تلفن ثابت',
    Image.asset('assets/icons/homeicons/nasbeharigh.png'):
        'نصب سیستم های اطفا حریق',
    Image.asset('assets/icons/homeicons/nasbecheragh.png'):
        'نصب انواع چراغ و سنسور',
  };

  final Map<Image, String> images2 = {
    Image.asset('assets/icons/homeicons/drill.png'): 'دریل کاری و سوراخکاری',
    Image.asset('assets/icons/homeicons/earth.png'): 'نصب و تست سیستم ارت',
    Image.asset('assets/icons/homeicons/lighting.png'):
        'نورپردازی داخل و محوطه ساختمان',
    Image.asset('assets/icons/homeicons/electricpanel.png'):
        'تابلو برق صنعتی و ساختمانی',
    Image.asset('assets/icons/homeicons/television.png'):
        'نصب تلویزیون روی دیوار',
    Image.asset('assets/icons/homeicons/fan.png'):
        'نصب انواع پنکه سقفی و دیواری',
    Image.asset('assets/icons/homeicons/remote.png'):
        'نصب ریموت لوستر و روشنایی',
    Image.asset('assets/icons/homeicons/aramband.png'):
        'نصب و تعمیر انواع آرام بند',
    Image.asset('assets/icons/homeicons/airconditioner.png'):
        'نصب انواع تهویه و هواکش',
    Image.asset('assets/icons/homeicons/burglar.png'): 'نصب سیستم های ضدسرقت',
    Image.asset('assets/icons/homeicons/modem.png'):
        'نصب و راه اندازی WiFi مودم',
  };

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
              fontFamily: 'iranSans',
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: 'iranSans',
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
                          children: [
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Container(
                                alignment: Alignment.topCenter,
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 2,
                                      color: Color(0xFF68CBD1),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'چه کارهایی رو میتونید با خیال راحت به ما بسپارید!!؟',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF029A91),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'iransans',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Wrap(
                              alignment: WrapAlignment.start,
                              spacing: 4,
                              direction: Axis.horizontal,
                              textDirection: TextDirection.rtl,
                              children: List<Widget>.generate(images1.length,
                                  (index) {
                                final image = images1.keys.toList()[index];
                                return Container(
                                  width: _iconspace,
                                  height: 130,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: _iconsize,
                                        height: _iconsize,
                                        child: image,
                                      ),
                                      SizedBox(
                                        width: 90,
                                        height: 40,
                                        child: Text(
                                          images1[image]!,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: _fontsize,
                                            color: Color(0xFF037E85),
                                            fontFamily: 'iransans',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            ),
                            SizedBox(height: 60),
                            //Here goes the container
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 117,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF037E85),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.bottomCenter,
                                  padding: EdgeInsets.symmetric(horizontal: 50)
                                      .add(EdgeInsets.only(bottom: 15)),
                                  child: Text(
                                    'جشنواره شروع فصل پاییز با  30 درصد تخفیف برای اولین سفارش',
                                    style: TextStyle(
                                      color: Color(0xFFCDEEF0),
                                      fontFamily: 'iransans',
                                      // height: linespacing,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned(
                                  top: -75,
                                  right: 25,
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    child: Image.asset(
                                      'assets/images/discount.png',
                                      width: 180,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                            Wrap(
                              alignment: WrapAlignment.start,
                              spacing: 4,
                              direction: Axis.horizontal,
                              textDirection: TextDirection.rtl,
                              children: List<Widget>.generate(images2.length,
                                  (index) {
                                final image = images2.keys.toList()[index];
                                return Container(
                                  width: _iconspace,
                                  height: 130,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: _iconsize,
                                        height: _iconsize,
                                        child: image,
                                      ),
                                      SizedBox(
                                        width: 90,
                                        height: 40,
                                        child: Text(
                                          images2[image]!,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: _fontsize,
                                            color: Color(0xFF037E85),
                                            fontFamily: 'iransans',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
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
