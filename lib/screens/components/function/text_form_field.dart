import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:persian/persian.dart';

import '../../../class/user_input_data.dart';

class TextFormFieldWidget extends StatefulWidget {
  final List<dynamic> questionItems;
  final String userInput;
  final ValueKey<String> textFormFieldKey;
  final FocusNode focusNode;
  final controller;

  TextFormFieldWidget({
    required this.questionItems,
    required this.userInput,
    required this.textFormFieldKey,
    required this.focusNode,
    required this.controller,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  Map<String, Map<String, dynamic>> userInputs = {};
  Map<String, TextEditingController> textControllers = {};

  @override
  void initState() {
    super.initState();
    clearUserInputData();
    for (final answer in widget.questionItems) {
      final answerId = answer['id'].toString();
      textControllers[answerId] =
          TextEditingController(text: '0'); // Set default value to '0'
    }
  }

  @override
  void dispose() {
    for (final controller in textControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void resetTextFields() {
    for (final controller in textControllers.values) {
      controller.text = ''; // Reset the text field value
    }
  }

  void clearUserInputData() {
    UserInputData.userInputs.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 8.0,
      children: widget.questionItems.map<Widget>((answer) {
        print(answer);
        final answerTitle = answer['title'] as String;
        // final ansPrice = answer['price'];
        final ansPrice = answer['price'] is String
            ? double.parse(answer['price'])
            : answer['price'];

        final answerPrice = NumberFormat('#,###').format(ansPrice);
        final answerId = answer['id'].toString();
        final int textFieldNumber = widget.questionItems.length;

        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: TextFormField(
            // controller: textControllers[answerId],
            // controller: widget.controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              labelText:
                  '$answerTitle (${answerPrice.withPersianNumbers()} ریال)',
              labelStyle: TextStyle(
                fontSize: 13,
              ),
              filled: true,
              fillColor: Color.fromARGB(255, 239, 237, 237),
            ),
            onChanged: (value) {
              setState(() {
                userInputs[answerId] = {
                  'title': answerTitle,
                  'price': answerPrice,
                  // 'price': double.parse(ansPrice),
                  'value': value,
                };
              });
              UserInputData.userInputs[answerId] = {
                'title': answerTitle,
                'price': answerPrice,
                // 'price': double.parse(ansPrice),
                'value': value,
              };
              print(
                  'userInputs inside textformFieldWidget more than 1 is $userInputs');
              print(
                  'userInputs inside UserInputData more than 1 is ${UserInputData.userInputs}');
            },
          ),
        );
      }).toList(),
    );
  }
}
