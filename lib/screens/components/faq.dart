import 'package:flutter/material.dart';

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}

class FAQ extends StatelessWidget {
  final double textpadding = 12;
  final double textsize = 16;
  final double answerpadding = 30;
  final double questionboxpadding = 6;
  final double questionboxborderradius = 7;
  final List<FAQItem> faqItems;

  FAQ({required this.faqItems});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: faqItems.map((faq) {
        return Container(
          constraints: BoxConstraints(minHeight: 0.0),
          padding: EdgeInsets.only(
            left: questionboxpadding,
            right: questionboxpadding,
          ),
          // height: MediaQuery.of(context).size.height * 0.8,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Theme(
              data: Theme.of(context).copyWith(
                dividerColor: Colors.transparent, // Remove the gray line border
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFCDEEF0),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(questionboxborderradius),
                        topLeft: Radius.circular(questionboxborderradius),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset:
                              Offset(0, 3), // Offset in the x and y direction
                        ),
                      ],
                    ),
                    child: ExpansionTile(
                      title: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          faq.question,
                          style: TextStyle(
                            color: Color(0xFF025459),
                            fontFamily: 'iransans',
                            fontSize: textsize,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: answerpadding),
                            child: Text(
                              faq.answer,
                              style: TextStyle(
                                color: Color(0xFF025459),
                                fontFamily: 'iransans',
                                fontSize: textsize,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
