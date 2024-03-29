// import 'package:flutter/material.dart';

// import 'package:im_stepper/stepper.dart';
// import './build_step_widget.dart';
// import '../../class/button_widget.dart';
// import '../../screens/components/header.dart';
// import '../../screens/components/drawerpage.dart';
// import '../../screens/components/footer.dart';

// class CalculatorPage extends StatefulWidget {
//   // const QuestionPage({super.key});

//   late final String title;
//   late final int id;

//   CalculatorPage({
//     required this.title,
//     required this.id,
//   });

//   @override
//   State<CalculatorPage> createState() => _CalculatorPageState();
// }

// class _CalculatorPageState extends State<CalculatorPage> {
//   final ScrollController _scrollController = ScrollController();
//   bool steppingEnabled = true;
//   int selectedIndex = 0;
//   int activeStep = 0;

//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   void handleMenuClicked() {
//     _scaffoldKey.currentState?.openEndDrawer();
//   }

//   @override
//   Widget build(BuildContext context) {
//     String serviceTitle = widget.title;
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       key: _scaffoldKey,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(kToolbarHeight),
//         child: Header(
//           onMenuClicked: handleMenuClicked, // Pass the callback function
//         ),
//       ),
//       endDrawer: DrawerPage(),
//       body: SingleChildScrollView(
//         controller: _scrollController,
//         child: Column(
//           children: [
//             Directionality(
//               textDirection: TextDirection.rtl,
//               child: IconStepper(
//                 steppingEnabled: steppingEnabled,
//                 activeStep: activeStep,
//                 onStepReached: (index) {
//                   setState(() {
//                     activeStep = index;
//                   });
//                 },
//                 icons: [
//                   Icon(Icons.question_answer),
//                   Icon(Icons.map_outlined),
//                   Icon(Icons.lock_clock),
//                   Icon(Icons.person),
//                   Icon(Icons.home),
//                   Icon(Icons.dashboard),
//                 ],
//               ),
//             ),
//             Directionality(
//               textDirection: TextDirection.rtl,
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: buildStepWidget(activeStep, serviceTitle),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Directionality(
//               textDirection: TextDirection.rtl,
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: ButtonWidget(
//                   steppingEnabled: steppingEnabled,
//                   onPressedNext: () {
//                     if (steppingEnabled) {
//                       setState(() {
//                         activeStep += 1;
//                       });
//                     }
//                   },
//                   onPressedPrevious: () {
//                     if (activeStep > 0) {
//                       setState(() {
//                         activeStep -= 1;
//                       });
//                     }
//                   },
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: double.infinity,
//               height: 350,
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Footer(),
//     );
//   }
// }
