import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../class/user_order_info.dart';

Future fetchUserOrders() async {
  var url = Uri.parse('https://s1.lianerp.com/api/public/user/order/list');

  SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? token = prefs.getString('token');

  var headers = {
    'Authorization': 'Bearer $token',
    // 'Authorization': 'Bearer 683|oezA8RW0LqDSmENohgyBRRsTNsCSWvXzxXlj3vPg',
    'Tokenpublic': 'bpbm',
    'Content-Type': 'application/json',
  };

  var response = await http.get(url, headers: headers);

  if (response.statusCode == 200) {
    var responseData = json.decode(response.body);

    return responseData;
  } else {
    throw Exception('Failed to fetch data from API');
  }
}
