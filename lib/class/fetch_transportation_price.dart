// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;


// class FetchTransportationPrice {
//   Future<Map<String, dynamic>> FetchTransPrice(
//     double? lat,
//     double? lng,
//   ) async {
//     final url =
//         Uri.parse('https://s1.lianerp.com/api/public/calculation/map/price');

//     final headers = {
//       'Tokenpublic': 'bpbm',
//       'Content-Type': 'application/json',
//     };

//     final body = json.encode({
//       'data': nextRelationId.toString(),
//     });

//     final response = await http.post(url, headers: headers, body: body);

//     if (response.statusCode == 200) {
//       final jsonData = json.decode(response.body);
//       final nestedData = jsonData['data'] as Map<String, dynamic>;

//       print('Your selected service data is $nestedData');
//       return nestedData;
//     } else {
//       print('Request failed with status: ${response.statusCode}');
//     }

//     return {};
//   }
// }
