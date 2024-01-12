import 'package:flutter/material.dart';

class RadioQuestion extends StatelessWidget {
  final List<dynamic> questionItems;
  final int selectedAnswerId;
  final ValueChanged<int?> onChanged;
  final ValueKey<String> radioButtonKey;

  const RadioQuestion(
      {required this.questionItems,
      required this.selectedAnswerId,
      required this.onChanged,
      required this.radioButtonKey});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      radius: Radius.circular(5),
      child: Container(
        height: 300,
        child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: questionItems.length,
          itemBuilder: (context, answerIndex) {
            final answerItem = questionItems[answerIndex];
            final answerTitle = answerItem['title'] as String;
            final answerId = int.parse(answerItem['id'] as String);

            return RadioListTile<int>(
              title: Text(
                answerTitle,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'iranSans',
                  color: Color(0xFF04A8B2),
                ),
              ),
              value: answerId,
              groupValue: selectedAnswerId,
              onChanged: onChanged,
            );
          },
        ),
      ),
    );
  }
}
