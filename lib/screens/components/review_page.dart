import 'dart:convert';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:persian/persian.dart';

import '../../class/review_list.dart';

class ReviewPage extends StatefulWidget {
  // const ReviewPage({super.key});

  final String serviceTitle;

  ReviewPage({required this.serviceTitle});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  List<Map<String, dynamic>> questionAnswers = [];
  List<double> answerPrice = [];
  late String trPrice = '20000';
  late String totPrice = '20000';
  late String? savedAddress = '';
  late String serviceTitle = widget.serviceTitle;

  @override
  void initState() {
    super.initState();
    getQuestionAnswers();
    getPriceValues(); // Retrieve the questionAnswers when the page is initialized
  }

  Future<void> getQuestionAnswers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? questionAnswersJson = prefs.getString('questionAnswers');
    if (questionAnswersJson != null) {
      List<dynamic> decodedList = json.decode(questionAnswersJson);
      List<Map<String, dynamic>> questionAnswersData = decodedList
          .map((dynamic item) => item as Map<String, dynamic>)
          .toList();
      setState(() {
        questionAnswers = questionAnswersData;
      });
      print('question answers inside review page are $questionAnswers');
    } else {
      setState(() {
        questionAnswers = [];
      });
    }
  }

  void getPriceValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? valuesJson = prefs.getString('answerPrice');

    double? transportationPrice = prefs.getDouble('transportationPrice');
    double? totalPrice = prefs.getDouble('totalPrice');
    // trPrice = NumberFormat('#,###').format(transportationPrice);
    // totPrice = NumberFormat('#,###').format(totalPrice);
    savedAddress = prefs.getString('savedAddress');

    if (valuesJson != null) {
      print('inside valuesJson if null');
      List<dynamic> decodedList = json.decode(valuesJson);
      List<double> retrievedValues = decodedList
          .map((dynamic item) => item.toDouble())
          .toList()
          .cast<double>(); // Explicitly cast to List<double>
      print(
          'retrievedValues inside review page for answerprice is $retrievedValues');
      setState(() {
        answerPrice = retrievedValues;
      });
    } else {
      setState(() {
        answerPrice = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print('question answers inside review page is $questionAnswers');
    print('price inside review page is $answerPrice');
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: Text(
            'بررسی و تأیید سفارش',
            style: TextStyle(
              color: Color(0xFF037E85),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFCDEEF0),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color(0xFF037E85),
                width: 2,
              )),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF04A8B2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                padding: EdgeInsets.only(right: 30).add(
                  EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      serviceTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          savedAddress ?? '',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                // height: MediaQuery.of(context).size.height * 0.8,
                height: 300,
                child: ListView.builder(
                  itemCount: questionAnswers.length,
                  itemBuilder: (context, index) {
                    final question = questionAnswers[index]['question'];
                    final answer = questionAnswers[index]['answer'];
                    final price = answerPrice[index];

                    return ReviewList(
                      question: question,
                      answer: answer,
                      price: price,
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 25, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.airport_shuttle,
                      color: Color(0xFF037E85),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${trPrice.withPersianNumbers()} ریال',
                      style: TextStyle(
                        color: Color(0xFF037E85),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'جمع کل : ${totPrice.withPersianNumbers()} ریال',
                  style: TextStyle(
                    color: Color(0xFF049768),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
