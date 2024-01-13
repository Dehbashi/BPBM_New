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
  bool steppingEnabled = true;
  int selectedIndex = 0;
  int activeStep = 0;
  double price = 0;
  double questionPrice = 0;
  double transportationPrice = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
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

  @override
  Widget build(BuildContext context) {
    // updatePrice();
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
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: buildStepWidget(
                  activeStep,
                  widget.serviceId,
                  widget.serviceTitle,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
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
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ButtonWidget(
                  steppingEnabled: steppingEnabled,
                  onPressedNext: () {
                    if (steppingEnabled) {
                      setState(() {
                        activeStep += 1;
                      });
                    }
                  },
                  onPressedPrevious: () {
                    if (activeStep > 0) {
                      setState(() {
                        activeStep -= 1;
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