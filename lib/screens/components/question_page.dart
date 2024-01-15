import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../screens/components/function/price_box.dart';
import '../../screens/components/function/fetch_next_question.dart';
import '../components/function/text_form_field.dart';
import '../components/function/radio_question.dart';
import '../components/calculator_page.dart';
import '../../components/screen/build_step_widget.dart';
import '../components/function/service_selection.dart';
import '../../class/user_input_data.dart';

class QuestionPage extends StatefulWidget {
  late final int serviceId;
  final String serviceTitle;
  late int activeStep;
  final Function(bool) onStepCompleted;

  QuestionPage({
    required this.serviceId,
    required this.serviceTitle,
    this.activeStep = 0,
    required this.onStepCompleted,
  });

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedAnswerId = -1;
  late var selectedAnswer;
  String userInput = '';
  Map<String, Map<String, dynamic>?> userInputs = {};
  bool isNextQuestionButtonEnabled = true;

  // it's the variable for the last question for the back button
  List<Map<String, dynamic>> questionHistory = [];
  //for now, it saves the question and answers.
  List<Map<String, dynamic>> questionAnswers = [];
  List<double> questionPriceList = [];
  double questionPrice = 0.0;

  static final ValueKey<String> textFormFieldKey =
      ValueKey<String>('textFormFieldKey');
  static final ValueKey<String> radioButtonKey =
      ValueKey<String>('radioButtonKey');
  FocusNode textFormFieldFocusNode = FocusNode();
  ScrollController scrollController = ScrollController();
  double scrollPosition = 0.0;
  // double questionPrice = 0.0;
  int defaultValue = 0;
  TextEditingController _controller = TextEditingController();

  Map<String, dynamic>? questionList;

  @override
  void initState() {
    super.initState();
    fetchFirstQuestion(
        widget.serviceTitle.isNotEmpty ? widget.serviceId : null);
    scrollController.addListener(() {
      scrollPosition = scrollController.position.pixels;
    });
    clearQuestionPrice();
  }

  @override
  void dispose() {
    textFormFieldFocusNode.dispose();
    scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }

  Future<void> fetchFirstQuestion(int? itemId) async {
    if (itemId != null) {
      final serviceSelection = ServiceSelection();
      final data = await serviceSelection.serviceSelected(itemId);
      setState(() {
        questionList = data;
      });
    }
  }

  Future<void> clearQuestionPrice() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('questionPrice', 0);
    prefs.setDouble('transportationPrice', 0);
    prefs.setDouble('totalPrice', 0);
  }

  Future<void> saveQuestionAnswers(
      List<Map<String, dynamic>> questionAnswers) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String questionAnswersJson = json.encode(questionAnswers);
    prefs.setString('questionAnswers', questionAnswersJson);
  }

  Future<void> savePrices(List<double> values) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String valuesJson = json.encode(values);
    print('valueJson for saveing question price list is $valuesJson');
    prefs.setString('answerPrice', valuesJson);
  }

  late final serviceTitle = widget.serviceTitle;

  final fetchNextQuestion = FetchNextQuestion();

  @override
  Widget build(BuildContext context) {
    print('your first question inside question page is $questionList');
    print(
        'your list of stored questions inside question page is $questionAnswers');
    // final dataList = widget.dataList;
    // print('your build dataList is $dataList');
    late final serviceId = widget.serviceId;
    late final currentQuestion = questionList!['question']['title'];
    late final questionitems = questionList!['question']['items'];
    late final questionType = questionList!['question']['type'];
    // late final questionSort = questionList!['question']['list'];
    // late final questionId = widget.dataList['question']['id'];

    // print('service id is $serviceId');
    if (questionList == null) {
      return Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      );
    } else {
      return Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text(
                'لطفاً مراحل ثبت پرسشنامه رو به دقت دنبال کنید',
                style: TextStyle(
                  color: Color(0xFF04A8B2),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'iranSans',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerRight,
              width: double.infinity,
              height: 35,
              padding: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                color: Color(0xFFCDEEF0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Text(
                      serviceTitle,
                      style: TextStyle(
                        color: Color(0xFF037E85),
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Color(0xFF037E85),
                      textDirection: TextDirection.ltr,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              currentQuestion,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF04A8B2),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            if (questionType == 'radio')
              RadioQuestion(
                radioButtonKey: radioButtonKey,
                questionItems: questionitems,
                selectedAnswerId: selectedAnswerId,
                onChanged: (value) {
                  setState(() {
                    selectedAnswerId = value ?? -1;
                    selectedAnswer = value!;
                    // questionPrice += questionitems[selectedAnswer - 1]['price'];
                  });

                  textFormFieldFocusNode.unfocus();
                },
              ),
            if (questionType == 'textbox')
              TextFormFieldWidget(
                controller: _controller,
                focusNode: textFormFieldFocusNode,
                textFormFieldKey: textFormFieldKey,
                questionItems: questionitems,
                userInput: userInput,
              ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Tooltip(
                  message: 'سوال قبل',
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                    ),
                    onPressed: () {
                      if (questionHistory.isNotEmpty) {
                        final previousQuestion = questionHistory.removeLast();
                        final int textFieldNumber = questionitems.length;

                        if (questionType == 'textbox') {
                          for (int i = 0; i < textFieldNumber; i++) {
                            questionPriceList.removeLast();
                            questionAnswers.removeLast();
                          }
                        }

                        if (questionType == 'radio') {
                          questionAnswers.removeLast();
                          questionPriceList.removeLast();
                        }

                        setState(() {
                          questionList = previousQuestion['data'];
                          selectedAnswerId = -1;
                        });
                        print(
                            'question price list inside previous button is $questionPriceList');
                      }
                      setState(() {
                        isNextQuestionButtonEnabled = true;
                      });
                    },
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tooltip(
                  message: 'سوال بعد',
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFF04A8B2),
                      ),
                    ),
                    onPressed: isNextQuestionButtonEnabled
                        ? () async {
                            if (questionType == 'radio') {
                              final questionSort =
                                  questionList!['question']['list'];
                              final nextRelationId = int.parse(
                                  questionList!['question']['items']
                                      [selectedAnswerId - 1]['next_relation']);
                              if (selectedAnswerId > -1 &&
                                  nextRelationId != 0) {
                                questionHistory.add({
                                  'data': questionList,
                                });
                                print(
                                    'question history inside question page is $questionHistory');
                                Map<String, dynamic> nestedData =
                                    await fetchNextQuestion.nextQuestion(
                                  serviceId,
                                  nextRelationId,
                                );
                                setState(() {
                                  questionList = nestedData;
                                  selectedAnswerId = -1;
                                });
                                print(
                                    'your new question list is $questionList');
                                questionAnswers.add({
                                  'question': currentQuestion,
                                  'answer': questionitems[selectedAnswer - 1]
                                      ['title'],
                                  'questionSort': questionSort,
                                });
                                questionPriceList.add(
                                    questionitems[selectedAnswer - 1]['price']
                                        .toDouble());
                              } else if (nextRelationId == 0) {
                                questionAnswers.add({
                                  'question': currentQuestion,
                                  'answer': questionitems[selectedAnswer - 1]
                                      ['title'],
                                  'questionSort': questionSort,
                                });
                                questionPriceList.add(
                                    questionitems[selectedAnswer - 1]['price']
                                        .toDouble());

                                setState(() {
                                  isNextQuestionButtonEnabled = false;
                                });

                                widget.onStepCompleted(true);

                                // widget.activeStep += 1;
                                // Navigator.pushReplacement(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => CalculatorPage(
                                //       serviceId: serviceId,
                                //       activeStep: widget.activeStep,
                                //       serviceTitle: serviceTitle,
                                //     ),
                                //   ),
                                // );
                              }
                              print(
                                  'your list of questions is $questionAnswers');
                            } else if (questionType == 'textbox') {
                              final int textFieldNumber = questionitems.length;
                              print(
                                  'userInputs inside question page button is ${UserInputData.userInputs}');
                              final questionSort =
                                  questionList!['question']['list'];
                              final nextRelationId = int.parse(
                                  questionList!['question']['items'][0]
                                      ['next_relation']);
                              if (nextRelationId != 0) {
                                questionHistory.add({
                                  'data': questionList,
                                });
                                Map<String, dynamic> nestedData =
                                    await fetchNextQuestion.nextQuestion(
                                  serviceId,
                                  nextRelationId,
                                );
                                setState(() {
                                  questionList = nestedData;
                                });
                                for (int i = 0; i < textFieldNumber; i++) {
                                  final answer = questionitems[i];
                                  final answerId = answer['id'].toString();
                                  final answerTitle = answer['title'] as String;
                                  final userInput = UserInputData
                                          .userInputs[answerId]?['value'] ??
                                      '';

                                  double parsedUserInput = 0.0;

                                  if (userInput.isNotEmpty) {
                                    parsedUserInput = double.parse(userInput);
                                  }

                                  questionAnswers.add({
                                    'question': currentQuestion,
                                    'answer': '$answerTitle: $userInput',
                                    'questionSort': questionSort,
                                  });
                                  questionPriceList.add(parsedUserInput *
                                      double.parse(answer['price'].toString()));
                                }

                                print(
                                    'your list of questions is $questionAnswers');
                              } else if (nextRelationId == 0) {
                                for (int i = 0; i < textFieldNumber; i++) {
                                  final answer = questionitems[i];
                                  final answerId = answer['id'].toString();
                                  final answerTitle = answer['title'] as String;
                                  final userInput = UserInputData
                                          .userInputs[answerId]?['value'] ??
                                      '';

                                  double parsedUserInput = 0.0;

                                  if (userInput.isNotEmpty) {
                                    parsedUserInput = double.parse(userInput);
                                  }

                                  questionAnswers.add({
                                    'question': currentQuestion,
                                    'answer': '$answerTitle: $userInput',
                                    'questionSort': questionSort,
                                  });
                                  questionPriceList.add(parsedUserInput *
                                      double.parse(answer['price'].toString()));
                                }

                                setState(() {
                                  isNextQuestionButtonEnabled = false;
                                });

                                widget.onStepCompleted(true);

                                // widget.activeStep += 1;
                                // Navigator.pushReplacement(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => CalculatorPage(
                                //       serviceId: serviceId,
                                //       activeStep: widget.activeStep,
                                //       serviceTitle: serviceTitle,
                                //     ),
                                //   ),
                                // );
                              }
                              print('your price is $questionPriceList');
                              print(
                                  'your list of questions is $questionAnswers');
                            }
                            questionPrice = questionPriceList.fold(
                                0,
                                (previousValue, element) =>
                                    previousValue + element);
                            saveQuestionAnswers(questionAnswers);
                            print(
                                'question price list inside question page is $questionPriceList');
                            savePrices(questionPriceList);
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setDouble('questionPrice', questionPrice);
                          }
                        : null,
                    child: Icon(
                      Icons.arrow_back_outlined,
                      textDirection: TextDirection.ltr,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   child: PriceBox(price: questionPrice),
            // ),
          ],
        ),
      );
    }
  }
}
