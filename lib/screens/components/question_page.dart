import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:bpbm2/screens/components/header.dart';

class QuestionPage extends StatefulWidget {
  // const QuestionPage({super.key});

  late final String serviceTitle;

  QuestionPage({required this.serviceTitle});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    String serviceTitle = widget.serviceTitle;
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
        ),
      ),
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
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Text(
                  'لطفاً مراحل ثبت پرسشنامه رو به دقت دنبال کنید',
                  style: TextStyle(
                    color: Color(0xFF04A8B2),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'iransans',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerRight,
                width: double.infinity,
                height: 35,
                padding: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Color(0xFFCDEEF0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      Text(
                        serviceTitle,
                        style: TextStyle(
                          color: Color(0xFF037E85),
                          fontSize: 16,
                          fontFamily: 'iransans',
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xFF037E85),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
