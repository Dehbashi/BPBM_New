import 'package:flutter/material.dart';
import 'package:persian/persian.dart';
import 'package:url_launcher/url_launcher.dart';

import './landing_footer_icon_text.dart';
import '../screens/home2.dart';
import '../screens/components/aboutus.dart';
import '../screens/components/rules.dart';
import '../screens/components/contactus.dart';
import '../screens/components/privacy.dart';
import '../screens/components/frequentlyaskedpage.dart';
import '../screens/components/techinfo.dart';

class LandingFooter extends StatelessWidget {
  void openDialPad(String phoneNumber) async {
    String url = 'tel:$phoneNumber';
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  void openMagazine() async {
    String url = 'https://bespareshbema.com/blog';
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final String phoneNumber = '021-91077077';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      decoration: BoxDecoration(
        color: Color(0xFF015F65),
      ),
      child: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LandingFooterIconText(
                      icon: 'assets/landing_icons/landing_home.png',
                      text: 'صفحه اصلی',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    LandingFooterIconText(
                      icon: 'assets/landing_icons/landing_recruitment.png',
                      text: 'راهنمای متخصصین',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TechInfo(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LandingFooterIconText(
                      icon: 'assets/landing_icons/landing_contact.png',
                      text: 'تماس با ما',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactUs(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    LandingFooterIconText(
                      icon: 'assets/landing_icons/landing_rules.png',
                      text: 'قوانین و مقررات',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Rules(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LandingFooterIconText(
                      icon: 'assets/landing_icons/landing_about.png',
                      text: 'درباره ما',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutUs(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    LandingFooterIconText(
                      icon: 'assets/landing_icons/landing_privacy.png',
                      text: 'حریم خصوصی',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrivacyPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LandingFooterIconText(
                      icon: 'assets/landing_icons/landing_faq.png',
                      text: 'پرسش های متداول',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FrequentlyAskedQs2(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    LandingFooterIconText(
                      icon: 'assets/landing_icons/landing_magazine.png',
                      text: 'مجله بسپارش به ما',
                      onTap: openMagazine,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Color(0xFF027E87),
                  width: 2,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ما را در شبکه های اجتماعی دنبال کنید',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'iranSans',
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/landing_icons/landing_x.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/landing_icons/landing_telegram.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/landing_icons/landing_instagram.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/landing_icons/landing_aparat.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'تهران، بزرگراه شهید خرازی، برج رزمال، طبقه سوم',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'iranSans',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'info@bespareshbema.com',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'iranSans',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    openDialPad(phoneNumber);
                  },
                  child: Text(
                    phoneNumber.withPersianNumbers(),
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'iranSans',
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/landing_icons/landing_electronic.png',
                  width: 56,
                  height: 54.19,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'کلیه حقوق مادی و معنوی این وبسایت متعلق به گروه بسپارش به ما می‌باشد',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'iranSans',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
