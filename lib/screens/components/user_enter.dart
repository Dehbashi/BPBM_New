import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './user_panel_page.dart';
import './user_sign_in.dart';

class UserEnter extends StatefulWidget {
  const UserEnter({Key? key}) : super(key: key);

  @override
  State<UserEnter> createState() => _UserEnterState();
}

class _UserEnterState extends State<UserEnter> {
  late Future<String?> tokenFuture;

  @override
  void initState() {
    super.initState();
    tokenFuture = fetchToken();
  }

  Future<String?> fetchToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getString('token');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: tokenFuture,
      builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final String? token = snapshot.data;

          if (token == null || token.isEmpty) {
            return UserSignIn();
          } else {
            return UserPanelPage();
          }
        }
      },
    );
  }
}
