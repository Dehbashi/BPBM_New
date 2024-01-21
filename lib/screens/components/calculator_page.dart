import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:im_stepper/stepper.dart';
import '../../components/screen/build_step_widget.dart';
import '../../class/button_widget.dart';
import '../../screens/components/header.dart';
import '../../screens/components/drawerpage.dart';
import '../../screens/components/footer.dart';
import '../components/function/price_box.dart';

class CalculatorPage extends StatefulWidget {
  // const QuestionPage({super.key});

  late final int serviceId;
  late String serviceTitle;

  CalculatorPage({
    required this.serviceId,
    required this.serviceTitle,
  });

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  // late final serviceTitle = widget.dataList['service_title'];

  final ScrollController _scrollController = ScrollController();
  bool steppingEnabled = false;
  bool isStepCompleted = false;
  int selectedIndex = 0;
  int activeStep = 0;
  double price = 0;
  double questionPrice = 0;
  double transportationPrice = 0;
  late String? _token = '';

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  void handleStepCompleted(bool value) {
    isStepCompleted = value;
    if (isStepCompleted == true) {
      if (activeStep == 0) {
        setState(() {
          activeStep += 1;
        });
      } else {
        setState(() {
          steppingEnabled = isStepCompleted;
        });
      }
    }
  }

  Future<void> updatePrice() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double updatedQuestionPrice = prefs.getDouble('questionPrice') ?? 0.0;
    double updatedTransportationPrice =
        prefs.getDouble('transportationPrice') ?? 0.0;

    setState(() {
      questionPrice = updatedQuestionPrice;
      transportationPrice = updatedTransportationPrice;
      price = questionPrice + transportationPrice;
    });

    prefs.setDouble('totalPrice', price);

    // Use the questionPrice variable as needed
    print('Question price from SharedPreferences: $questionPrice');
  }

  void initState() {
    super.initState();
    fetchToken();
    // clearToken();
  }

  Future<void> clearToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.clear();
  }

  Future<void> fetchToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    setState(() {
      _token = _prefs.getString('token');
    });
  }

  @override
  Widget build(BuildContext context) {
    updatePrice();
    print('your serviceTitle inside calculator page is ${widget.serviceTitle}');
    print('your active step inside calculator page is ${activeStep}');
    // String serviceTitle = widget.title;
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Header(
          onMenuClicked: handleMenuClicked, // Pass the callback function
        ),
      ),
      endDrawer: DrawerPage(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            // Directionality(
            //   textDirection: TextDirection.rtl,
            //   child: IconStepper(
            //     steppingEnabled: steppingEnabled,
            //     activeStep: activeStep,
            //     onStepReached: (index) {
            //       setState(() {
            //         activeStep = index;
            //       });
            //     },
            //     icons: [
            //       Icon(Icons.question_answer),
            //       Icon(Icons.map_outlined),
            //       Icon(Icons.lock_clock),
            //       Icon(Icons.person),
            //       Icon(Icons.home),
            //       Icon(Icons.dashboard),
            //     ],
            //   ),
            // ),
            if (activeStep < 4 && activeStep != 0)
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: PriceBox(
                    price: price,
                  ),
                ),
              ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: buildStepWidget(
                  activeStep,
                  widget.serviceId,
                  widget.serviceTitle,
                  handleStepCompleted,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            if (activeStep < 4 && activeStep == 0)
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: PriceBox(
                    price: price,
                  ),
                ),
              ),
            SizedBox(
              height: 30,
            ),
            if (activeStep != 0 && activeStep != 5)
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ButtonWidget(
                    activeStep: activeStep,
                    steppingEnabled: steppingEnabled,
                    // steppingEnabled: true,
                    onPressedNext: () {
                      // setState(() {
                      //   activeStep += 1;
                      // });
                      print(
                          'isStepCompleted inside $activeStep is $isStepCompleted');
                      if (activeStep == 4) {
                        print('you can send the info to the API');
                        setState(() {
                          activeStep += 1;
                        });
                      } else if (steppingEnabled) {
                        if (activeStep == 2 && _token != '') {
                          setState(() {
                            activeStep += 2;
                          });
                        } else {
                          setState(() {
                            activeStep += 1;
                            steppingEnabled = false;
                          });
                        }
                      }
                    },
                    onPressedPrevious: () {
                      print(
                          'stepping Enabled inside previous step is $steppingEnabled and $isStepCompleted');

                      if (activeStep > 0) {
                        if (activeStep == 4 && _token != '') {
                          setState(() {
                            activeStep -= 2;
                            steppingEnabled = false;
                          });
                        } else
                          setState(() {
                            activeStep -= 1;
                            steppingEnabled = false;
                          });
                      }
                    },
                  ),
                ),
              ),
            SizedBox(
              width: double.infinity,
              height: 350,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
