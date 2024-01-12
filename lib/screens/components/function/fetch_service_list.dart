import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FetchServiceList {
  Future<List<dynamic>> fetchData() async {
    final url = Uri.parse('https://s1.lianerp.com/api/public/calculation/list');

    final headers = {
      'Tokenpublic': 'bpbm',
      'Content-Type': 'application/json',
    };

    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final dataItems = jsonData['data']['data'] as List<dynamic>;
      return dataItems;
    } else {
      print('Request failed with status: ${response.statusCode}');
      return [];
    }
  }
}
