import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchTransportationPrice {
  Future<int> fetchTransPrice(String districtNumber) async {
    final url =
        Uri.parse('https://s1.lianerp.com/api/public/calculation/map/price');

    final headers = {
      'Tokenpublic': 'bpbm',
      'Content-Type': 'application/json',
    };

    final body = json.encode({
      'data': districtNumber,
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final jsonData = int.parse(response.body);
      // final nestedData = jsonData['data'] as Map<String, dynamic>;

      print('Your distric price is $jsonData');
      return jsonData;
    } else {
      print('Request failed with status: ${response.statusCode}');
      throw Exception('Failed to fetch transportation price');
    }
  }
}
