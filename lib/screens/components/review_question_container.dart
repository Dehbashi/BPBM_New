import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:persian/persian.dart';

import '../../class/review_list.dart';

class ReviewQuestionContainer extends StatelessWidget {
  // const ReviewContainer({super.key});
  final serviceTitle;
  final savedAddress;
  final questionAnswers;
  final answerPrice;
  final String trPrice;
  // final String totPrice;

  ReviewQuestionContainer({
    required this.serviceTitle,
    required this.savedAddress,
    required this.questionAnswers,
    required this.answerPrice,
    required this.trPrice,
    // required this.totPrice,
  });

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0.0;

    for (int i = 0; i < questionAnswers.length; i++) {
      final sort = questionAnswers[i]['questionSort'];
      final price = answerPrice[i];

      if (sort == 'service') {
        totalPrice += price;
      }
    }

    final trPriceWithoutComma = trPrice.replaceAll(',', '');
  final trPriceValue = double.parse(trPriceWithoutComma);
  totalPrice += trPriceValue;

    final totPrice = NumberFormat('#,###').format(totalPrice);

    return Container(
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
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        savedAddress ?? '',
                        style: TextStyle(
                          color: Colors.white,
                        ),
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
                final sort = questionAnswers[index]['questionSort'];

                if (sort == 'service') {
                  return ReviewList(
                    question: question,
                    answer: answer,
                    price: price,
                  );
                } else {
                  return Container();
                }
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
    );
  }
}
