import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../screens/components/name_page.dart';

Future<void> verifyOtpCode(
  BuildContext context,
  String ip,
  String cellNumber,
  String userAgent,
  String otpCode,
  final Function(bool) onStepCompleted,
) async {
  final url = Uri.parse('https://s1.lianerp.com/api/public/auth/otp/verify');

  final headers = {
    'TokenPublic': 'bpbm',
    'Content-Type': 'application/json',
  };

  final body = jsonEncode({
    'ip': ip,
    'phone_number': cellNumber,
    'userAgent': userAgent,
    'code': otpCode,
  });

  final response = await http.post(url, headers: headers, body: body);
  print(response.body);
  print(body);
  print('cellNumber');
  print(cellNumber);
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final token = data['data']['token'];
    final id = data['data']['user']['id'];

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
    prefs.setInt('id', id);
    prefs.setString('cellNumber', cellNumber);
    prefs.setString('userAgent', userAgent);

    print('your data is $data');
    Navigator.of(context).pop();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: AlertDialog(
            title: Icon(
              Icons.verified_user,
              size: 80,
              color: Color(0xFF037E85),
            ),
            content: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                'احراز هویت انجام شد!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: Container(
                          width: 400, // Set the desired width
                          // padding: EdgeInsets.all(16),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                NamePage(onStepCompleted: onStepCompleted,),
                                SizedBox(height: 16),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Color(0xFF04A8B2),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'برگشت به صفحه قبل',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  'ورود به صفحه بعد',
                ),
              ),
            ],
          ),
        );
      },
    );
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'کد اشتباه',
            textAlign: TextAlign.right,
          ),
          content: Text(
            'کد وارد شده صحیح نمی باشد. لطفاً مجدد امتحان نمایید.',
            textAlign: TextAlign.right,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'باشه',
              ),
            ),
          ],
        );
      },
    );
  }
}
