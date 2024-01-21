import 'package:flutter/material.dart';

import './footer.dart';
import './privacy.dart';
import './drawerpage.dart';
import './header.dart';
import '../../class/app_title_container.dart';
import '../../class/rules_term.dart';
import '../../class/app_elevated_button.dart';
import '../../class/rules_text.dart';

class Rules extends StatelessWidget {
  final double textpadding = 12;
  final double headingpadding = 20;
  final double imageradius = 10;
  final double linespacing = 2.2;
  final double textsize = 16;
  final double headingsize = 24;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Header(
          onMenuClicked: handleMenuClicked, // Pass the callback function
        ),
      ),
      endDrawer: DrawerPage(),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(imageradius),
                          child: Image.asset(
                            'assets/images/knowtherules.png',
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                            height: 200,
                          ),
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: headingpadding),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Icon(
                                Icons.security,
                                size: 40,
                                color: Color(0xFF04A8B2),
                              ),
                              SizedBox(width: 8),
                              AppTitleContainer(text: 'قوانین و مقررات'),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: textpadding),
                          child: Text(
                            'کاربر گرامی، در سند پیش‌رو، شرایط خدمات و سیاست‌های حریم شخصی سرویس “بسپارش به ما” تشریح شده است. تمامی خدمات ارائه‌شده در مجموعه‌ی “بسپارش به ما” تابع قوانین مطروح در این بخش است، بنابراین توصیه می‌کنیم پیش از استفاده از خدمات “بسپارش به ما”، این بخش را با دقت مطالعه کنید. ثبت‌نام در مجموعه‌ی “بسپارش به ما” به معنای پذیرش شرایط زیر و قبول کلیه‌ی قوانین از طرف شما کاربر گرامی تلقی خواهد شد.\nطرفین با استناد به ماده 10 قانون مدنی که مقرر می دارد:"قراردادهای خصوصی نسبت به کسانی که آن را منعقد نموده اند در صورتی که مخالف صریح قانون نباشد نافذ است" و ماده 219 قانون مدنی که بیان می دارد" عقودی که بر طبق قانون واقع شده باشد بین متعاملین و قائم مقام آنها لازم الاتباع است مگر اینکه به رضای طرفین قاله یا به علت قانونی فسخ شود" ملزم و متعهد به اجرای کلیه مفاد آن می باشند.',
                            style: TextStyle(
                              color: Color(0xFF037E85),
                              height: linespacing,
                              fontSize: textsize,
                            ),
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        SizedBox(height: 16),
                        AppTitleContainer(text: 'قواعد عمومی'),
                        SizedBox(height: 16),
                        RulesTerm(
                          image: 'assets/images/knowtherules2.png',
                          title: 'ماده ۱: تعاریف و اصطلاحات',
                          text: rule1Text,
                        ),
                        SizedBox(height: 16),
                        RulesTerm(
                          image: 'assets/images/services.png',
                          title: 'ماده ۲: خدمات و سرویس ها',
                          text: rule2Text,
                        ),
                        SizedBox(height: 16),
                        RulesTerm(
                          image: 'assets/images/financialaffairs.png',
                          title: 'ماده ۳: امور مالی',
                          text: rule3Text,
                        ),
                        SizedBox(height: 16),
                        RulesTerm(
                          image: 'assets/images/intellectualproperty.png',
                          title: 'ماده ۴: مالکیت معنوی',
                          text: rule4Text,
                        ),
                        SizedBox(height: 16),
                        RulesTerm(
                          image: 'assets/images/termsofuse.png',
                          title:
                              'ماده ۵: شرایط استفاده کاربران از "بسپارش به ما"',
                          text: rule5Text,
                        ),
                        SizedBox(height: 16),
                        RulesTerm(
                          image: 'assets/images/profile.png',
                          title: 'ماده ۶: حساب کاربری',
                          text: rule6Text,
                        ),
                        SizedBox(height: 50),
                        RulesTerm(
                          image: 'assets/images/discount2.png',
                          title: 'ماده ۷: تخفیف',
                          text: rule7Text,
                        ),
                        SizedBox(height: 16),
                        RulesTerm(
                          image: 'assets/images/information.png',
                          title: 'ماده ۸: اطلاعات',
                          text: rule8Text,
                        ),
                        SizedBox(height: 16),
                        RulesTerm(
                          image: 'assets/images/orderplacement.png',
                          title: 'ماده ۹: ثبت سفارش',
                          text: rule9Text,
                        ),
                        SizedBox(height: 16),
                        RulesTerm(
                          image: 'assets/images/committments.png',
                          title: 'ماده ۱۰: حقوق و تعهدات "بسپارش به ما"',
                          text: rule10Text,
                        ),
                        SizedBox(height: 16),
                        RulesTerm(
                          image: 'assets/images/conflictresolution.png',
                          title: 'ماده ۱۱: حل اختلاف',
                          text: rule11Text,
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: double.infinity,
                          height: 320,
                          decoration: BoxDecoration(
                            color: Color(0xFFCDEEF0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'برای آشنایی بیشتر می تونید بخش حریم خصوصی کاربران  ما رو هم مطالعه کنید . تیم بسپارش به ما تمامی اصطلاحات و مواردی رو که لازمه در مورد حقوق و حریم خصوصی کاربران رو  کامل توضیح داده ، امنیت کاربران از موراد مهم ماست بنابراین میتونیم با خیال راحت از خدمات ما استفاده کنید',
                                  style: TextStyle(
                                    color: Color(0xFF037E85),
                                    fontFamily: 'iransans',
                                    height: linespacing,
                                    fontSize: textsize,
                                  ),
                                  textAlign: TextAlign.justify,
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                              AppElevatedButton(
                                text: 'حریم خصوصی کاربران',
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PrivacyPage(),
                                    ),
                                  ); // Handle button press
                                },
                              ),
                              SizedBox(height: 0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
