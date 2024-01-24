import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

void submitOrderData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String token = prefs.getString('token') ?? '';
  int userId = prefs.getInt('id') ?? 0;
  String cellNumber = prefs.getString('cellNumber') ?? '';
  String firstName = prefs.getString('firstName') ?? '';
  String lastName = prefs.getString('lastName') ?? '';
  String serviceTitle = prefs.getString('serviceTitle') ?? '';
  int serviceId = prefs.getInt('serviceId') ?? 0;
  String answerPrice = prefs.getString('answerPrice') ?? '';
  String questionAnswers = prefs.getString('questionAnswers') ?? '';
  double totalPrice = prefs.getDouble('totalPrice') ?? 0;
  double transportationPrice = prefs.getDouble('transportationPrice') ?? 0;
  String savedAddress = prefs.getString('savedAddress') ?? '';

  var url =
      Uri.parse('https://s1.lianerp.com/api/public/calculation/submitv2-app');

  var body = json.encode({
    'userId': userId,
    'token': token,
    'cellNumber': cellNumber,
    'firstName': firstName,
    'lastName': lastName,
    'serviceTitle': serviceTitle,
    'serviceId': serviceId,
    'answerPrice': answerPrice,
    'questionAnswers': questionAnswers,
    'totalPrice': totalPrice,
    'transportationPrice': transportationPrice,
    'savedAddress': savedAddress,
  });

  var headers = {
    'Tokenpublic': 'bpbm',
    'Content-Type': 'application/json',
  };

  var response = await http.post(url, headers: headers, body: body);

  if (response.statusCode == 200) {
    // Request successful
    var responseData = json.decode(response.body);
    print('Data posted successfully');
    print(responseData);
    clearOrderData();
  } else {
    // Request failed
    print('Error posting data: ${response.statusCode}');
  }
}

Future<void> clearOrderData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('serviceTitle');
    await prefs.remove('serviceId');
    await prefs.remove('answerPrice');
    await prefs.remove('questionAnswers');
    await prefs.remove('totalPrice');
    await prefs.remove('transportationPrice');
    await prefs.remove('savedAddress');

    print('Order data cleared successfully');
  }
