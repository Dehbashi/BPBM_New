import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchAddress {
  Future<Map<String, dynamic>> AddressFetch(
    double? lat,
    double? lng,
  ) async {
    final url =
        Uri.parse('https://s1.lianerp.com/api/public/calculation/map/reverse');

    final headers = {
      'Tokenpublic': 'bpbm',
      'Content-Type': 'application/json',
    };

    final body = json.encode({
      'lng': lng,
      'lat': lat,
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final addressData = json.decode(response.body);
      // final addressData = jsonData['data'] as Map<String, dynamic>;

      print('Your address data is $addressData');
      return addressData;
    } else {
      print('Request failed with status: ${response.statusCode}');
    }

    return {};
  }
}
