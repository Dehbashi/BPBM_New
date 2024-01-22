import 'package:bpbm2/screens/components/profiledrawer.dart';
import 'package:flutter/material.dart';
import 'package:bpbm2/screens/home.dart';
import 'package:bpbm2/screens/components/aboutus.dart';
import 'package:bpbm2/screens/components/contactus.dart';
import 'package:bpbm2/screens/components/user_enter.dart';

class Footer extends StatefulWidget {
  // const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  // Named parameter for menu click

  int _currentPageIndex = 0;

  void _onItemTapped(int index) {
    print('current page index is $_currentPageIndex');
    print('index is $index');

    setState(() {
      _currentPageIndex = index;
      // Use Navigator to navigate to the desired pages
      switch (index) {
        case 0:
          // Navigate to the home page
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
          break;
        case 1:
          // Navigate to the contact page
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ContactUs()));
          break;
        case 2:
          // Navigate to the about page
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => AboutUs()));
          break;
        case 3:
          // Navigate to the support page
          // Navigator.push(context, MaterialPageRoute(builder: (context) => SupportPage()));
          break;
        case 4:
          // Scaffold.of(context).openDrawer();
          // Navigate to the profile page
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => UserEnter()));
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          currentIndex: _currentPageIndex,
          onTap: _onItemTapped,
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
    );
  }
}
