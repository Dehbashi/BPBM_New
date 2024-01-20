import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SendOrderInformation {
  Future<Map<String, dynamic>> sendOrderInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    final cellNumber = prefs.getString('cellNumber');
    final userAgent = prefs.getString('userAgent');

    final url = Uri.parse(
        'https://s1.lianerp.com/api/public/calculation/select_service');

    final headers = {
      'Tokenpublic': 'bpbm',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final body = json.encode({});

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final nestedData = jsonData['data'] as Map<String, dynamic>;

      // print('Your selected service data is $nestedData');
      return nestedData;
    } else {
      print('Request failed with status: ${response.statusCode}');
    }

    return {};
  }
}
