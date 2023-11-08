//import 'dart:html';

import 'package:bpbm2/screens/components/footer.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  // This widget is the root of your application.

  final double iconsize = 55;
  final double iconspace = 15;
  final double _fontsize = 13;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white
          ),
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
          )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo.png',
            width: 121,
            height: 68,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu , color: Colors.grey),
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
                            SizedBox(height: 20),
                            Padding (
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child:
                              Container (
                                alignment: Alignment.topCenter,
                                width:double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 2,
                                      color: Color(0xFF68CBD1),
                                    ),
                                  ),
                                ),
                                child:
                                Text(
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
                            Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 80,
                                  height: 130,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/icons/homeicons/nasbeanten.png',
                                        width: iconsize,
                                        height: iconsize,
                                      ),
                                      Text(
                                        'نصب آنتن و آنتن مرکزی',
                                        style: TextStyle(
                                          fontSize: _fontsize,
                                          color: Color(0xFF037E85),
                                          // fontWeight: FontWeight.bold,
                                          fontFamily: 'iransans',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: iconspace),
                                Container(
                                  alignment: Alignment.center,
                                  width: 80,
                                  height: 130,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/icons/homeicons/nasbeiphon.png',
                                        width: iconsize,
                                        height: iconsize,
                                      ),
                                      Text(
                                        'نصب و تعمیر انواع آیفون',
                                        style: TextStyle(
                                          fontSize: _fontsize,
                                          color: Color(0xFF037E85),
                                          // fontWeight: FontWeight.bold,
                                          fontFamily: 'iransans',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: iconspace),
                                Container(
                                  alignment: Alignment.center,
                                  width: 90,
                                  height: 140,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/icons/homeicons/nasbekoolergazi.png',
                                        width: iconsize,
                                        height: iconsize,
                                      ),
                                      Text(
                                        'نصب و سرویس انواع کولر گازی',
                                        style: TextStyle(
                                          fontSize: _fontsize,
                                          color: Color(0xFF037E85),
                                          // fontWeight: FontWeight.bold,
                                          fontFamily: 'iransans',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: iconspace),
                                Container(
                                  alignment: Alignment.center,
                                  width: 90,
                                  height: 140,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/icons/homeicons/nasbekoolerabi.png',
                                        width: iconsize,
                                        height: iconsize,
                                      ),
                                      Text(
                                        'نصب و سرویس انواع کولر آبی',
                                        style: TextStyle(
                                          fontSize: _fontsize,
                                          color: Color(0xFF037E85),
                                          // fontWeight: FontWeight.bold,
                                          fontFamily: 'iransans',
                                        ),
                                      ),
                                    ],
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
