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
import '../components/function/fetch_service_list.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage>
    with SingleTickerProviderStateMixin {
  final double _iconsize = 18;
  // final double _iconspace = 40;
  final double _fontsize = 14;
  bool showAllItems = false;
  List<dynamic> dataList = [];

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    fetchData();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _animationController = AnimationController(
        duration: const Duration(milliseconds: 300),
        vsync: this,
      );
    });
  }

  Future<void> fetchData() async {
    final fetchServiceList = FetchServiceList();
    final data = await fetchServiceList.fetchData();
    setState(() {
      dataList = data;
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }


  void _navigateToPage(dynamic id) {
    setState(() {
      switch (id) {
        case 4:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AntennaPage()));
          break;
        case 3:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => IphonePage()));
          break;
        case 2:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => GasCoolerPage()));
          break;
        case 1:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WaterCoolerPage()));
          break;
        case 8:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UpsPage()));
          break;
        case 7:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OutletPage()));
          break;
        case 6:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WiringPage()));
          break;
        case 5:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CctvPage()));
          break;
        case 13:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CentralPage()));
          break;
        case 12:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TelephonePage()));
          break;
        case 11:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FireAlarmPage()));
          break;
        case 10:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SensorPage()));
          break;
        case 17:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DrillPage()));
          break;
        case 16:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => EarthPage()));
          break;
        case 15:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LightingPage()));
          break;
        case 14:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => IndPowerPage()));
          break;
        case 21:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WallTvPage()));
          break;
        case 20:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CeilingFanPage()));
          break;
        case 19:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LightRemotePage()));
          break;
        case 18:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DamperPage()));
          break;
        case 22:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AirConditioningPage()));
          break;
        case 23:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BurglarAlarmPage()));
          break;
        case 24:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ModemPage()));
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
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
                            'دسته بندی خدمات',
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
                padding: EdgeInsets.only(right: 60, left: 0, top: 15),
                child: AnimatedSize(
                  duration: Duration(microseconds: 300),
                  child: Column(
                    children: List<Widget>.generate(dataList.length, (index) {
                      final item = dataList[index];
                      final itemId = item['id'];
                      final imagePath = 'assets/icons/homeicons/$itemId.webp';

                      if (index <= 6 || showAllItems) {
                        return GestureDetector(
                          onTap: () {
                            // Perform navigation based on the tapped item
                            _navigateToPage(itemId);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            // width: _iconspace,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              border: Border.all(color: Colors.transparent),
                            ),
                            // height: 20,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: _iconsize,
                                  height: _iconsize,
                                  child: Image.asset(
                                    imagePath,
                                    // height: 20,
                                    // width: 20,
                                  ),
                                ),
                                SizedBox(width: 20),
                                SizedBox(
                                  width: 200,
                                  height: 25,
                                  child: Text(
                                    item['title'],
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
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 50, left: 30, top: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      showAllItems = !showAllItems;
                      if (showAllItems) {
                        _animationController.forward();
                      } else {
                        _animationController.reverse();
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(right: 15),
                    alignment: Alignment.topRight,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xFF04A8B2),
                        ),
                      ),
                    ),
                    child: Text(
                      showAllItems ? 'موارد کمتر ...' : 'موارد بیشتر ...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF037E85),
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'iransans',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(right: 95, left: 30, top: 0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FrequentlyAskedQs2()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'پرسشهای متداول',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF037E85),
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'iransans',
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FrequentlyAskedQs2()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'درخواست همکاری',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF037E85),
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'iransans',
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FrequentlyAskedQs2()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'پشتیبانی',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF037E85),
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'iransans',
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rules()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'قوانین و مقررات',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF037E85),
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'iransans',
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () async {
                        const url = 'https://blog.bespareshbema.com';
                        final uri = Uri.parse(url);
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(uri);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'مجله بسپارش به ما',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF037E85),
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'iransans',
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(right: 0),
                child: Column(
                  children: [
                    Text(
                      'ما را در شبکه های اجتماعی دنبال کنید',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF04A8B2),
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'iransans',
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 15,
                        direction: Axis.horizontal,
                        textDirection: TextDirection.rtl,
                        children: [
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.squareFacebook,
                              color: Color(0xFF04A8B2),
                              size: 30,
                            ),
                            onPressed: () async {
                              const url =
                                  'https://www.facebook.com/bespareshbemaco';
                              final uri = Uri.parse(url);
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Color(0xFF04A8B2),
                              size: 30,
                            ),
                            onPressed: () async {
                              const url =
                                  'https://www.instagram.com/bespareshbemaco';
                              final uri = Uri.parse(url);
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.telegram,
                              color: Color(0xFF04A8B2),
                              size: 30,
                            ),
                            onPressed: () async {
                              const url =
                                  'https://www.telegram.com/bespareshbemaco';
                              final uri = Uri.parse(url);
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: Color(0xFF04A8B2),
                              size: 30,
                            ),
                            onPressed: () async {
                              const url =
                                  'https://www.linkedin.com/bespareshbemaco';
                              final uri = Uri.parse(url);
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
