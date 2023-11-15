//import 'dart:html';
import 'package:bpbm2/screens/components/splash_screen.dart';
import 'package:bpbm2/screens/home.dart';
import 'package:bpbm2/screens/components/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/rules.dart';
import 'package:bpbm2/screens/components/aboutus.dart';
import 'package:bpbm2/screens/components/privacy.dart';
import 'package:bpbm2/screens/components/frequentlyaskedpage.dart';
import 'package:bpbm2/screens/components/contactus.dart';
import 'package:bpbm2/screens/components/techinfo.dart';
import 'package:bpbm2/screens/components/consultant.dart';
import 'package:bpbm2/screens/components/services/antennapage.dart';
import 'package:bpbm2/screens/components/services/gascoolerpage.dart';
import 'package:bpbm2/screens/components/services/watercoolerpage.dart';
import 'package:bpbm2/screens/components/services/cctvpage.dart';
import 'package:bpbm2/screens/components/services/iphonepage.dart';
import 'package:bpbm2/screens/components/services/outletpage.dart';
import 'package:bpbm2/screens/components/services/wiringpage.dart';
import 'package:bpbm2/screens/components/services/telephonepage.dart';
import 'package:bpbm2/screens/components/services/breakerpage.dart';
import 'package:bpbm2/screens/components/services/sensorpage.dart';
import 'package:bpbm2/screens/components/services/centralpage.dart';
import 'package:bpbm2/screens/components/services/upspage.dart';
import 'package:bpbm2/screens/components/services/indpowerpage.dart';
import 'package:bpbm2/screens/components/services/firealarmpage.dart';
import 'package:bpbm2/screens/components/services/lightingpage.dart';
import 'package:bpbm2/screens/components/services/earthpage.dart';
import 'package:bpbm2/screens/components/services/drillpage.dart';
import 'package:bpbm2/screens/components/services/damperpage.dart';
import 'package:bpbm2/screens/components/services/lightremotepage.dart';
import 'package:bpbm2/screens/components/services/ceilingfanpage.dart';
import 'package:bpbm2/screens/components/services/walltvpage.dart';
import 'package:bpbm2/screens/components/services/airconditioningpage.dart';
import 'package:bpbm2/screens/components/services/burglaralarmpage.dart';
import 'package:bpbm2/screens/components/services/modempage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
