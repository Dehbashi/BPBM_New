import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './rules.dart';
import './frequentlyaskedpage.dart';
import './technicians_guide.dart';
import '../components/function/fetch_service_list.dart';
import '../../class/drawer_page_quick_link.dart';
import '../../class/drawer_page_navigation.dart';

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
      navigateToPage(context, id);
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
                              fontWeight: FontWeight.bold,
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
                padding: EdgeInsets.only(right: 60, left: 30, top: 0),
                child: Column(
                  children: [
                    DrawerPageQuickLink(
                      title: 'پرسشهای متداول',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FrequentlyAskedQs2()),
                        );
                      },
                    ),
                    DrawerPageQuickLink(
                      title: 'درخواست همکاری',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TechniciansGuide()),
                        );
                      },
                    ),
                    DrawerPageQuickLink(
                      title: 'پشتیبانی',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FrequentlyAskedQs2()),
                        );
                      },
                    ),
                    DrawerPageQuickLink(
                      title: 'قوانین و مقررات',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rules()),
                        );
                      },
                    ),
                    DrawerPageQuickLink(
                      title: 'مجله بسپارش به ما',
                      onPressed: () async {
                        const url = 'https://blog.bespareshbema.com';
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
