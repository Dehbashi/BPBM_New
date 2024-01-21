import 'package:flutter/material.dart';

import '../../../class/landing_elevated_button.dart';

class LandingFooter extends StatefulWidget {
  // const Footer({super.key});
 
  @override
  State<LandingFooter> createState() => _LandingFooterState();
}

class _LandingFooterState extends State<LandingFooter> {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Offset in the y-axis for the shadow
          ),
        ],
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0,
          ),
        ),
      ),
      child: LandingElevatedButton(onPressed: (){}, text: 'ثبت سفارش',),
    );
  }
}
