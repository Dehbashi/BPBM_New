//import 'dart:html';
import 'package:bpbm2/screens/components/splash_screen.dart';
import 'package:bpbm2/screens/home.dart';
import 'package:bpbm2/screens/components/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/rules.dart';
import 'package:bpbm2/screens/components/aboutus.dart';
import 'package:bpbm2/screens/components/privacy.dart';
import 'package:bpbm2/screens/components/frequently2.dart';
import 'package:bpbm2/screens/components/contactus.dart';
import 'package:bpbm2/screens/components/techinfo.dart';
import 'package:bpbm2/screens/components/consultant.dart';

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
