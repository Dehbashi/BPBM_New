import 'package:flutter/material.dart';

import './aboutus.dart';
import './contactus.dart';
import './user_panel_page.dart';
import './drawerpage.dart';
import './header.dart';
import '../home.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomePage(),
    ContactUs(),
    AboutUs(),
    AboutUs(),
    UserPanelPage(),
  ];

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
        ),
        fontFamily: 'iranSans',
        textTheme: TextTheme(
          /// for services texts
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Color(0xFF025459),
            height: 1.8,
          ),

          /// for services titles
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF037E85),
          ),
          titleLarge: TextStyle(
            fontSize: 24,
            color: Color(0xFF037E85),
            fontWeight: FontWeight.bold,
          ),
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
        body: _tabs[_currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // Offset in the y-axis for the shadow
              ),
            ],
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 0,
              ),
            ),
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'خانه',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.headset_mic),
                  label: 'تماس با ما',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_box_rounded),
                  label: 'درباره ما',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message),
                  label: 'پشتیبانی',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'پروفایل',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
