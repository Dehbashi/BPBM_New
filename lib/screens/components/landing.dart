import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './header.dart';
import './drawerpage.dart';
import '../../class/landing_text_title_widget.dart';
import '../../class/landing_button_widget.dart';
import '../../class/landing_advantages.dart';
import '../../class/landing_footer.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late ScrollController _scrollController;
  bool _showFAB = false;

  TextEditingController _phoneNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  void _scrollListener() {
    setState(() {
      _showFAB = _scrollController.position.pixels > 0;
    });
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _phoneNumberController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  void LandingSendNumber(String phoneNumber) async {
    // Make an HTTP request to the API
    var url = Uri.parse('https://api.example.com/endpoint');
    var response = await http.post(url, body: {'phone_number': phoneNumber});

    // Handle the response
    if (response.statusCode == 200) {
      // Request successful
      print('Phone number sent successfully');
    } else {
      // Request failed
      print('Failed to send phone number');
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final double fontTitleSize = 20;
    final double fontSize = 14;
    final String fontFamily = 'iranSans';

    return MaterialApp(
      theme: ThemeData(
        fontFamily: fontFamily,
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFF5F7F7),
          elevation: 0,
        ),
      ),
      home: Scaffold(
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
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/landing_icons/person.png'),
                      alignment: Alignment.bottomCenter,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.symmetric(horizontal: 20).add(
                    EdgeInsets.only(top: 30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LandingTextTitleWidget('دیگه وقتشه بسپاریش به ما!'),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Color(0xFF848282),
                            fontSize: fontSize,
                            fontFamily: fontFamily,
                            height: 2.5,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '«بسپارش به ما» ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'یه سامانه آنلاین ارائه خدمات تخصصی برقه که علاوه بر استفاده از کارشناسای متخصص، خدماتش رو گارانتی هم می‌کنه',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/landing_icons/guarantee.png',
                                width: 90,
                                height: 90,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'گارانتی خدمات',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF013F44),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 40),
                            child: Icon(
                              Icons.add,
                              size: 60,
                              color: Color(0xFFEDEDED),
                            ),
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/landing_icons/calculation_1.png',
                                width: 90,
                                height: 90,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'محاسبه آنی قیمت',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF013F44),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'شما می‌تونید قبل از ثبت سفارشتون، هزینه خدمات مورد‌نظر رو به صورت آنی محاسبه کنید',
                        style: TextStyle(
                          color: Color(0xFF848282),
                          fontSize: fontSize,
                          height: 2.5,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            splashColor: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {},
                            child: LandingButtonWidget(
                              title: 'محاسبه آنی قیمت',
                              hasBorder: true,
                              width: mediaQuery.size.width * 0.42,
                              height: 50,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {},
                            child: LandingButtonWidget(
                              title: 'مشاوره تلفنی',
                              hasBorder: false,
                              width: mediaQuery.size.width * 0.42,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      LandingTextTitleWidget('مزیت‌های «بسپارش به ما»'),
                      SizedBox(
                        height: 20,
                      ),
                      LandingAdvantages(fontFamily),
                      SizedBox(
                        height: 40,
                      ),
                      LandingTextTitleWidget('ما هم با شما تماس می گیریم'),
                      SizedBox(
                        height: 30,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Color(0xFF848282),
                            fontSize: fontSize,
                            fontFamily: fontFamily,
                            height: 2.5,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'برای دریافت ',
                            ),
                            TextSpan(
                              text: 'مشاوره رایگان ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'یا ',
                            ),
                            TextSpan(
                              text: 'ثبت سرویس به صورت تلفنی',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  '، کافیه شماره موبایلتون رو در کادر زیر وارد کنید تا کارشناسای ما در سریع‌ترین زمان ممکن با شما تماس بگیرن',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _phoneNumberController,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'شماره موبایل خود را وارد کنید',
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color(0xFFA30000),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color(0xFFB7B5B5),
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Color(0xFFDBDADA),
                          ),
                        ),
                        //
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          String phoneNumber = _phoneNumberController.text;
                          LandingSendNumber(phoneNumber);
                        },
                        child: LandingButtonWidget(
                          title: 'ثبت درخواست مشاوره',
                          hasBorder: false,
                          height: 60,
                          width: double.infinity,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: LandingFooter(),
              ),
            ],
          ),
        ),
        floatingActionButton: _showFAB
            ? Container(
                padding: EdgeInsets.only(bottom: 30),
                child: FloatingActionButton(
                  backgroundColor: Color(0xFF029EA9),
                  onPressed: _scrollToTop,
                  child: Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                  ),
                  shape: CircleBorder(),
                ),
              )
            : null,
      ),
    );
  }
}
