import 'package:bpbm2/screens/components/services/airconditioningpage.dart';
import 'package:bpbm2/screens/components/services/burglaralarmpage.dart';
import 'package:bpbm2/screens/components/services/ceilingfanpage.dart';
import 'package:bpbm2/screens/components/services/centralpage.dart';
import 'package:bpbm2/screens/components/services/damperpage.dart';
import 'package:bpbm2/screens/components/services/drillpage.dart';
import 'package:bpbm2/screens/components/services/earthpage.dart';
import 'package:bpbm2/screens/components/services/firealarmpage.dart';
import 'package:bpbm2/screens/components/services/indpowerpage.dart';
import 'package:bpbm2/screens/components/services/lightingpage.dart';
import 'package:bpbm2/screens/components/services/lightremotepage.dart';
import 'package:bpbm2/screens/components/services/sensorpage.dart';
import 'package:bpbm2/screens/components/services/telephonepage.dart';
import 'package:bpbm2/screens/components/services/upspage.dart';
import 'package:bpbm2/screens/components/services/walltvpage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:bpbm2/screens/components/animationcontroller.dart';
import 'package:bpbm2/screens/components/frequentlyaskedpage.dart';
import 'package:bpbm2/screens/components/services/antennapage.dart';
import 'package:bpbm2/screens/components/services/gascoolerpage.dart';
import 'package:bpbm2/screens/components/services/watercoolerpage.dart';
import 'package:bpbm2/screens/components/services/iphonepage.dart';
import 'package:bpbm2/screens/components/services/cctvpage.dart';
import 'package:bpbm2/screens/components/services/outletpage.dart';
import 'package:bpbm2/screens/components/services/wiringpage.dart';
import 'package:bpbm2/screens/components/services/modempage.dart';

import 'package:bpbm2/screens/components/rules.dart';

class ProfileDrawer extends StatefulWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  State<ProfileDrawer> createState() => _ProfileDrawerState();
}

class _ProfileDrawerState extends State<ProfileDrawer>
    with SingleTickerProviderStateMixin {
  final double _iconsize = 18;
  // final double _iconspace = 40;
  final double _fontsize = 14;
  bool showAllItems = false;

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _animationController = AnimationController(
        duration: const Duration(milliseconds: 300),
        vsync: this,
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final Map<Image, String> options = {
    Image.asset('assets/icons/profiledrawericons/barchart.png'): 'داشبورد',
    Image.asset('assets/icons/homeicons/view-list.png'): 'سفارش های من',
    Image.asset('assets/icons/homeicons/location-on.png'): 'آدرس های من',
    Image.asset('assets/icons/homeicons/person.png'): 'مشخصات کاربری',
  };

  void _navigateToPage(String title) {
    setState(() {
      switch (title) {
        case 'داشبورد':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AntennaPage()));
          break;
        case 'سفارش های من':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => IphonePage()));
          break;
        case 'آدرس های من':
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => GasCoolerPage()));
          break;
        case 'مشخصات کاربری':
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WaterCoolerPage()));
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Drawer(
          backgroundColor: Color(0xFFCDEEF0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 130,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      dividerTheme:
                          const DividerThemeData(color: Colors.transparent),
                    ),
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                          // color: Color(0xFFCDEEF0),
                          // border: Border(bottom: BorderSide.none),
                          ),
                      child: Image.asset('assets/images/logo.png'),
                      padding: EdgeInsets.only(top: 0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 50, left: 30, top: 10),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFF04A8B2),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.bar_chart_rounded,
                            color: Color(0xFF037E85),
                            size: 24,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'کاربر: 09102930575',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF037E85),
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'iransans',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 70, left: 30, top: 15),
                child: AnimatedSize(
                  duration: Duration(microseconds: 300),
                  child: Column(
                    children: List<Widget>.generate(options.length, (index) {
                      final image = options.keys.toList()[index];
                      final title = options[image]!;
                      return GestureDetector(
                        onTap: () {
                          // Perform navigation based on the tapped item
                          _navigateToPage(title);
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 15),
                          // width: _iconspace,
                          width: double.infinity,
                          // height: 20,
                          child: Row(
                            children: [
                              SizedBox(
                                width: _iconsize,
                                height: _iconsize,
                                child: image,
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                width: 200,
                                height: 20,
                                child: Text(
                                  options[image]!,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: _fontsize,
                                    color: Color(0xFF037E85),
                                    fontFamily: 'iransans',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
