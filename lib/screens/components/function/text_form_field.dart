import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final List<dynamic> questionItems;
  // final TextEditingController textEditingController;
  final String userInput;
  final ValueChanged<String> onChanged;
  final ValueKey<String> textFormFieldKey;
  final FocusNode focusNode;
  final controller;

  TextFormFieldWidget({
    required this.questionItems,
    required this.userInput,
    required this.onChanged,
    required this.textFormFieldKey,
    required this.focusNode,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 8.0,
      children: questionItems.map<Widget>((answer) {
        final answerTitle = answer['title'] as String;

        return SizedBox(
          width: 200,
          child: TextFormField(
            key: ValueKey(answerTitle),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              labelText: answerTitle,
              labelStyle: TextStyle(
                fontSize: 13,
              ),
              filled: true,
              fillColor: Color.fromARGB(255, 239, 237, 237),
            ),
            onChanged: onChanged,
          ),
        );
      }).toList(),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     final answerTitle = questionItems[0]['title'] as String;
//     return SizedBox(
//       width: 200,
//       child: TextFormField(
//         controller: controller,
//         key: ValueKey(answerTitle),
//         keyboardType: TextInputType.number,
//         decoration: InputDecoration(
//           border: UnderlineInputBorder(
//             borderSide: BorderSide(
//               color: Colors.black,
//             ),
//           ),
//           labelText: answerTitle,
//           labelStyle: TextStyle(
//             fontSize: 13,
//           ),
//           filled: true,
//           fillColor: Color.fromARGB(255, 239, 237, 237),
//         ),
//         // onChanged: onChanged,
//       ),
//     );
//   }
// }
