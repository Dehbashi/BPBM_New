import 'package:flutter/material.dart';
import 'package:persian/persian.dart';

import '../../class/review_list.dart';

class ReviewProductContainer extends StatelessWidget {
  // const ReviewContainer({super.key});
  final serviceTitle;
  final savedAddress;
  final questionAnswers;
  final answerPrice;
  final String trPrice;
  final String totPrice;

  ReviewProductContainer({
    required this.serviceTitle,
    required this.savedAddress,
    required this.questionAnswers,
    required this.answerPrice,
    required this.trPrice,
    required this.totPrice,
  });

  @override
  Widget build(BuildContext context) {
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
            child: Text(
              'لیست کالاهای درخواستی',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 5),
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
