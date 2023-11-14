import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:bpbm2/screens/components/animationcontroller.dart';
import 'package:bpbm2/screens/components/frequently2.dart';
import 'package:bpbm2/screens/components/services/antennapage.dart';
import 'package:bpbm2/screens/components/services/gascoolerpage.dart';
import 'package:bpbm2/screens/components/services/watercoolerpage.dart';
import 'package:bpbm2/screens/components/services/iphonepage.dart';
import 'package:bpbm2/screens/components/services/cctvpage.dart';
import 'package:bpbm2/screens/components/services/outletpage.dart';
import 'package:bpbm2/screens/components/services/wiringpage.dart';
import 'package:bpbm2/screens/components/services/telephonepage.dart';
import 'package:bpbm2/screens/components/services/breakerpage.dart';
import 'package:bpbm2/screens/components/services/sensorpage.dart';
import 'package:bpbm2/screens/components/services/centralpage.dart';
import 'package:bpbm2/screens/components/services/indpowerpage.dart';
import 'package:bpbm2/screens/components/services/upspage.dart';
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
import 'package:bpbm2/screens/components/rules.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage>
    with SingleTickerProviderStateMixin {
  final double _iconsize = 18;
  final double _iconspace = 40;
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

  final Map<Image, String> images = {
    Image.asset('assets/icons/homeicons/nasbeanten.png'):
        'نصب آنتن و آنتن مرکزی',
    Image.asset('assets/icons/homeicons/nasbeiphon.png'):
        'نصب و تعمیر انواع آیفون',
    Image.asset('assets/icons/homeicons/nasbekoolergazi.png'):
        'نصب و سرویس کولر گازی',
    Image.asset('assets/icons/homeicons/nasbekoolerabi.png'):
        'نصب و سرویس کولر آبی',
    Image.asset('assets/icons/homeicons/nasbeups.png'): 'نصب و تعمیر انواع UPS',
    Image.asset('assets/icons/homeicons/nasbekelid.png'):
        'نصب انواع کلید و پریز',
    Image.asset('assets/icons/homeicons/simkeshi.png'): 'سیم کشی و کابل کشی',
    Image.asset('assets/icons/homeicons/nasbedoorbin.png'):
        'نصب دوربین مداربسته',
    Image.asset('assets/icons/homeicons/santral.png'):
        'خدمات سانترال و تلفن های وویپ',
    Image.asset('assets/icons/homeicons/simtelephone.png'): 'سیم کشی تلفن ثابت',
    Image.asset('assets/icons/homeicons/nasbeharigh.png'):
        'نصب سیستم های اطفا حریق',
    Image.asset('assets/icons/homeicons/nasbecheragh.png'):
        'نصب انواع چراغ و سنسور',
    Image.asset('assets/icons/homeicons/drill.png'): 'دریل کاری و سوراخکاری',
    Image.asset('assets/icons/homeicons/earth.png'): 'نصب و تست سیستم ارت',
    Image.asset('assets/icons/homeicons/lighting.png'):
        'نورپردازی داخل و محوطه ساختمان',
    Image.asset('assets/icons/homeicons/electricpanel.png'):
        'تابلو برق صنعتی و ساختمانی',
    Image.asset('assets/icons/homeicons/television.png'):
        'نصب تلویزیون روی دیوار',
    Image.asset('assets/icons/homeicons/fan.png'):
        'نصب انواع پنکه سقفی و دیواری',
    Image.asset('assets/icons/homeicons/remote.png'):
        'نصب ریموت لوستر و روشنایی',
    Image.asset('assets/icons/homeicons/aramband.png'):
        'نصب و تعمیر انواع آرام بند',
    Image.asset('assets/icons/homeicons/airconditioner.png'):
        'نصب انواع تهویه و هواکش',
    Image.asset('assets/icons/homeicons/burglar.png'): 'نصب سیستم های ضدسرقت',
    Image.asset('assets/icons/homeicons/modem.png'):
        'نصب و راه اندازی مودم WiFi',
  };

  void _navigateToPage(String title) {
    setState(() {
      switch (title) {
        case 'نصب آنتن و آنتن مرکزی':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AntennaPage()));
          break;
        case 'نصب و تعمیر انواع آیفون':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => IphonePage()));
          break;
        case 'نصب و سرویس کولر گازی':
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => GasCoolerPage()));
          break;
        case 'نصب و سرویس کولر آبی':
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WaterCoolerPage()));
          break;
        case 'نصب و تعمیر انواع UPS':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UpsPage()));
          break;
        case 'نصب انواع کلید و پریز':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OutletPage()));
          break;
        case 'سیم کشی و کابل کشی':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WiringPage()));
          break;
        case 'نصب دوربین مداربسته':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CctvPage()));
          break;
        case 'خدمات سانترال و تلفن های وویپ':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CentralPage()));
          break;
        case 'سیم کشی تلفن ثابت':
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TelephonePage()));
          break;
        case 'نصب سیستم های اطفا حریق':
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FireAlarmPage()));
          break;
        case 'نصب انواع چراغ و سنسور':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SensorPage()));
          break;
        case 'دریل کاری و سوراخکاری':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DrillPage()));
          break;
        case 'نصب و تست سیستم ارت':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => EarthPage()));
          break;
        case 'نورپردازی داخل و محوطه ساختمان':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LightingPage()));
          break;
        case 'تابلو برق صنعتی و ساختمانی':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => IndPowerPage()));
          break;
        case 'نصب تلویزیون روی دیوار':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WallTvPage()));
          break;
        case 'نصب انواع پنکه سقفی و دیواری':
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CeilingFanPage()));
          break;
        case 'نصب ریموت لوستر و روشنایی':
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LightRemotePage()));
          break;
        case 'نصب و تعمیر انواع آرام بند':
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DamperPage()));
          break;
        case 'نصب انواع تهویه و هواکش':
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AirConditioningPage()));
          break;
        case 'نصب سیستم های ضدسرقت':
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BurglarAlarmPage()));
          break;
        case 'نصب و راه اندازی مودم WiFi':
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FrequentlyAskedQs2()));
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
                padding: EdgeInsets.only(right: 70, left: 30, top: 15),
                child: AnimatedSize(
                  duration: Duration(microseconds: 300),
                  child: Column(
                    children: List<Widget>.generate(images.length, (index) {
                      final image = images.keys.toList()[index];
                      final title = images[image]!;
                      if (index <= 6 || showAllItems) {
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
                                    images[image]!,
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
                    Wrap(
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
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Color(0xFF04A8B2),
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.telegram,
                            color: Color(0xFF04A8B2),
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Color(0xFF04A8B2),
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ],
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
