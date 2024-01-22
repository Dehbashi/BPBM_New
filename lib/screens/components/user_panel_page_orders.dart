import 'dart:math';

import 'package:flutter/material.dart';

import './header.dart';
import './footer.dart';
import './drawerpage.dart';
import './order_container.dart';

class UserPanelPageOrders extends StatefulWidget {
  const UserPanelPageOrders({super.key});

  @override
  State<UserPanelPageOrders> createState() => _UserPanelPageOrdersState();
}

class _UserPanelPageOrdersState extends State<UserPanelPageOrders> {
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF04A8B2),
                      width: 2,
                    ),
                  ),
                ),
                child: Text('سفارش های من',
                style: TextStyle(
                  color: Color(0xFF037E85),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(height: 20,),
              OrderContainer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
