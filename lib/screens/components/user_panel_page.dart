import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:persian/persian.dart';

import './header.dart';
import './footer.dart';
import './drawerpage.dart';
import '../../class/app_elevated_button.dart';
import './user_panel_page_orders.dart';
import '../home.dart';

class UserPanelPage extends StatefulWidget {
  const UserPanelPage({super.key});

  @override
  State<UserPanelPage> createState() => _UserPanelPageState();
}

class _UserPanelPageState extends State<UserPanelPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String? name = '';
  String? cellNumber = '';

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  void initState() {
    super.initState();
    fetchUserInfo();
  }

  Future<void> fetchUserInfo() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    setState(() {
      name = '${_prefs.getString('firstName')} ${_prefs.getString('lastName')}';
      cellNumber = _prefs.getString('cellNumber');
    });
  }

  Future<void> deleteData() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.clear();
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
        padding: EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80, // Adjust the size as needed
              backgroundImage: AssetImage('assets/images/profile_image.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text('${name ?? ''}'),
            SizedBox(
              height: 5,
            ),
            Text(cellNumber ?? ''),
            SizedBox(
              height: 20,
            ),
            AppElevatedButton(
                text: 'سفارش های من',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserPanelPageOrders(),
                    ),
                  );
                }),
            SizedBox(
              height: 20,
            ),
            AppElevatedButton(text: 'پرداخت های من', onPressed: () {}),
            SizedBox(
              height: 60,
            ),
            AppElevatedButton(
              text: 'خروج',
              onPressed: () {
                deleteData();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
              },
              color: Colors.red,
              icon: Icons.logout_outlined,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
