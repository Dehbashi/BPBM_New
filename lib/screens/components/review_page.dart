import 'dart:convert';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './discount_box.dart';
import './review_question_container.dart';
import './review_product_container.dart';
import './review_note_box.dart';

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
  late String trPrice = '';
  late String totPrice = '';
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
        trPrice = NumberFormat('#,###').format(transportationPrice);
        totPrice = NumberFormat('#,###').format(totalPrice);
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
        ReviewQuestionContainer(
          answerPrice: answerPrice,
          questionAnswers: questionAnswers,
          savedAddress: savedAddress,
          serviceTitle: serviceTitle,
          totPrice: totPrice,
          trPrice: trPrice,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: DiscountBox(),
        ),
        SizedBox(
          height: 20,
        ),
        ReviewProductContainer(
          answerPrice: answerPrice,
          questionAnswers: questionAnswers,
          savedAddress: savedAddress,
          serviceTitle: serviceTitle,
          totPrice: totPrice,
          trPrice: trPrice,
        ),
        SizedBox(
          height: 20,
        ),
        ReviewNoteBox(),
      ],
    );
  }
}
