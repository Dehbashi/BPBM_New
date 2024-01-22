//import 'dart:html';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import './screens/components/landing.dart';
import 'screens/home.dart';
import 'screens/components/landings/cctv_landing_page.dart';
import 'screens//components/landings/lighting_landing_page.dart';
import 'screens/components/landings/video_phone_landing_page.dart';
import 'screens/components/landings/industrial_power_landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
