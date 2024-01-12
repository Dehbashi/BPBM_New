import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../question_page.dart';

class FetchNextQuestion {
  Future<Map<String, dynamic>> nextQuestion(
    int serviceId,
    int nextRelationId,
  ) async {
    final url =
        Uri.parse('https://s1.lianerp.com/api/public/calculation/question');

    final headers = {
      'Tokenpublic': 'bpbm',
      'Content-Type': 'application/json',
    };

    final body = json.encode({
      'relation_id': nextRelationId.toString(),
      'service_id': serviceId.toString(),
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final nestedData = jsonData['data'] as Map<String, dynamic>;

      print('Your selected service data is $nestedData');
      return nestedData;
    } else {
      print('Request failed with status: ${response.statusCode}');
    }

    return {};
  }
}
