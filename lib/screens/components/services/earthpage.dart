import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:bpbm2/screens/components/faq.dart';

List<FAQItem> faqList = [
  FAQItem(
    question: 'کارشناس های بسپارش به ما کار حفر چاه ارت رو هم انجام می دن؟',
    answer:
        'بله، خدمات حفر چاه ارت هم جزو خدماتیه که کارشناس‌های بسپارش به ما ارائه می‌کنن.',
  ),
  FAQItem(
    question: 'تأمین وسایل جانبی مورد نیاز برای اجرای سیستم ارت با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),

  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات سیستم ارت توی بسپارش به ما درخواست بدم؟',
    answer:
        'از اونجایی که درخواست خدمات رو به صورت آنلاین ثبت می‌کنین، بنابراین هرموقعی که برای سیم‌کشی ساختمون نیاز به متخصص داشتین می‌تونین توی بسپارش به ما درخواست بدین. هرزمان که کارشناس‌ها در دسترس باشن، بهترین کارشناس رو برای انجام کار به محل شما می‌فرستیم.',
  ),

  FAQItem(
    question: 'بسپارش به ما برای خدمات و تجهیزات ضمانت می ده؟',
    answer:
        'بله، تمام خدمات و تجهیزات شامل گارانتی و ضمانت بسپارش به ما می‌شه. ما حتی در مورد تعهد اخلاقی و رفتار کارشناس‌ها هم به شما ضمانت می‌دیم تا توی اون زمانی که مهمون خونه یا محل کارتون هستیم، خاطره‌ی خوبی از ارائه‌ی خدمات براتون ثبت کنیم.',
  ),
  FAQItem(
    question: 'می تونم برای هزینه خدمات فاکتور هم بگیرم؟',
    answer:
        'بله اگه نیاز به فاکتور داشته باشین، بسپارش به ما برای وسایل و اقلام به کار برده شده، بهتون فاکتور می‌ده.',
  ),

  FAQItem(
    question:
        'توی کدوم از مناطق می تونم از خدمات سیستم ارت بسپارش به ما استفاده کنم؟',
    answer:
        'توی هرکدوم از مناطق ۲۲ گانه شهر تهران که زندگی می‌کنین، کارشناس‌های ما می‌تونن برای ارائه خدمات در محل شما حاضر بشن.',
  ),
  // Add more FAQs as needed
];

class Faq {
  final String question;
  final String answer;

  Faq({required this.question, required this.answer});
}

class EarthPage extends StatefulWidget {
  @override
  State<EarthPage> createState() => _EarthPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'طراحی و اجرای سیستم ارت',
  Image.asset('assets/icons/antennaicons/help.png'):
      'عیب‌یابی و رفع خرابی سیستم ارت',
  Image.asset('assets/icons/antennaicons/setupbox.png'): 'حفر چاه ارت',
};

class _EarthPageState extends State<EarthPage> {
  final double headingpadding = 12;
  final double _imageradius = 15;
  final double textpadding = 12;
  final double textsize = 16;
  final double answerpadding = 30;
  final double questionboxpadding = 8;
  final double questionboxborderradius = 7;
  final double _iconsize = 24;
  final double _fontsize = 16;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.white),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Color(0xFF037E85),
            unselectedItemColor: Color(0xFF037E85),
            selectedLabelStyle: TextStyle(
              fontFamily: 'iransans',
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: 'iransans',
            ),
            showSelectedLabels: true,
            showUnselectedLabels: true,
          )),
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo.png',
            width: 121,
            height: 68,
          ),
          // actions: [
          //   IconButton(
          //     icon: Icon(Icons.menu, color: Colors.grey),
          //     onPressed: () {
          //       //here goes the drawer
          //     },
          //   )
          // ],
          actions: [
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            ),
          ],
        ),
        endDrawer: DrawerPage(),
        body: Container(
          padding: EdgeInsets.all(8),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: headingpadding, top: 20),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text(
                          'آشنایی با سرویس سیستم ارت',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF037E85),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'iransans',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/services/earth.png',
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                      height: 220,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border(
                    //     bottom: BorderSide(
                    //       color: Color(0xFF04A8B2),
                    //     ),
                    //   ),
                    // ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: textpadding)
                          .add(EdgeInsets.only(bottom: 5)),
                      child: Text(
                        'سیم‌کشی ارت ساختمان رو بسپارش به ما\n'
                        'برای طراحی، اجرا یا عیب‌یابی و رفع مشکل سیستم ارت ساختمون نیاز به نیروی متخصص داری؟\n'
                        'کارشناس‌های بسپارش به ما آماده‌ن که حرفه‌ای‌ترین خدمات سیستم ارت رو بهت ارائه کنن.',
                        style: TextStyle(
                          color: Color(0xFF025459),
                          fontFamily: 'iransans',
                          height: 1.8,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(right: headingpadding, top: 0),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Flexible(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              'سیم‌کشی ارت چیه و چطور انجام می‌شه؟',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF037E85),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'iransans',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border(
                    //     bottom: BorderSide(
                    //       color: Color(0xFF04A8B2),
                    //     ),
                    //   ),
                    // ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: textpadding)
                          .add(EdgeInsets.only(bottom: 5)),
                      child: Text(
                        'شاید در مورد مفهوم مقاومت الکتریکی یا رسانایی الکتریکی شنیده باشین. به زبون خیلی ساده، مقاومت الکتریکی یه مشخصه‌ایه که می‌شه اون رو برای تمام اجسام و مواد تعریف کرد و رسانایی اون ماده در مقابل جریان برق رو تعیین می‌کنه. به بیان دیگه، مقاومت یه مفهوم مخالف رسانایی الکتریکیه. بااین‌حساب، مقاومت الکتریکی جلوی عبور جریان رو می‌گیره و هرچی یه مسیر یا ماده‌ای مقاومت الکتریکی بیشتری داشته باشه، جریان هم کمتر تمایل داره که از اونجا عبور کنه.\n'
                        'بدن انسان مقاومت الکتریکی خیلی کمی داره و رسانای خوبیه. به‌خاطر همین هم یکی از مسیرهای مورد علاقه‌ی جریان برقه! اگه به هر دلیلی، بدنه‌ی اجسام و وسایل الکتریکی برق‌دار بشه و ما بهشون دست بزنیم، جریان برق از بدن ما عبور می‌کنه و اگه شدت جریان زیاد باشه، باعث برق‌گرفتگی می‌شه.\n'
                        'برای اینکه جلوی این اتفاق گرفته بشه، باید یه مسیری که مقاومت الکتریکی کمتری از بدن ما داره برای این جریان‌های نشتی در نظر گرفت تا جریان به جای عبور از بدن ما از اون مسیر عبور کنه. چنین مسیری رو بهش می‌گن ارت (Earth).\n'
                        'کار سیم‌کشی ارت اینه که بدنه‌ی فلزی یا هادی دستگاه‌های الکتریکی رو به زمین وصل می‌کنه تا یه مسیر جایگزینی که مقاومتش از بدن انسان کمتره ایجاد بشه و جریان نشتی از اون مسیر تخلیه بشه. اینطوری اگر به اون‌وسیله‌ای که برق‌دار شده دست بزنیم، دیگه جریان از بدن ما عبور نمی‌کنه و ترجیح می‌ده از اون مسیر کم‌مقاومت سیم‌کشی ارت عبور کنه.\n'
                        'سیم ارت توی لوازم الکتریکی مختلف مثل یخچال، لباسشویی، مایکوروویو و... کنار سیم‌های نول و فاز به‌کار می‌ره و به رنگ سبز و زرده. هادی سیم ارت از جنس مسه که رسانایی خیلی خوبی برای عبور جریان برق داره. با توجه به نوع سیم، هادی اون می‌تونه مفتولی یا افشان باشه.\n'
                        'برای اینکه سیم ارت به اصطلاح بهتر زمین بشه و ضریب اطمینانش بالاتر بره، از چاه ارت استفاده می‌کنن. چاه ارت یه حفره‌ست که مشخصاتش براساس محل حفر متفاوته. مثلا عمق چاه ارت متناسب با مقدار رطوبت خاک تعیین می‌شه، یعنی ممکنه توی یه منطقه‌ای نیاز باشه نیم‌متر حفر کنیم تا به رطوبت مناسب برسیم و توی یه منطقه‌ی دیگه که خشک‌تره نیاز به سه متر حفاری داشته باشیم. چاه ارت رو با خاک، ذغال و آهک پر می‌کنن و داخلش هم یه صفحه‌ی مسی بزرگ عمودی قرار می‌دن. این کار باعث می‌شه که رسانایی اون قسمت زمین خیلی بیشتر بشه و ضریب اطمینان سیم ارت بالاتر بره.\n'
                        'سیم‌کشی ارت و چاه ارت توی فضاهای صنعتی اهمیت خیلی زیادی داره و باید به‌صورت استاندارد و با ضریب اطمینان بالا پیاده‌سازی بشه. توی خونه‌ها هم سیم‌کشی ارت لازمه و باعث می‌شه خطر برق‌گرفتگی موقع کار با وسایل الکتریکی شما رو تهدید نکنه. تقریبا تمام وسایل الکتریکی و الکترونیکی نیاز به سیم ارت دارن اما می‌شه از وسایلی که بدنه‌شون عایقه و هادی برق نیست چشم‌پوشی کرد. یعنی بهتره وسایلی که بدنه‌ی فلزی یا هادی دارن، حتما و حتما سیم ارت داشته باشن.',
                        style: TextStyle(
                          color: Color(0xFF025459),
                          fontFamily: 'iransans',
                          height: 1.8,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(right: headingpadding, top: 0),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text(
                          'سوالات متداول',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF037E85),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'iransans',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  FAQ(faqItems: faqList),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.only(right: 40, top: 0),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Flexible(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              'بسپارش به ما برای سیم ارت چه خدماتی ارائه می‌کنه؟',
                              style: TextStyle(
                                fontSize: 16,
                                height: 2,
                                color: Color(0xFF037E85),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'iransans',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: textpadding)
                        .add(EdgeInsets.only(bottom: 5)),
                    child: AnimatedSize(
                      duration: Duration(microseconds: 300),
                      child: Column(
                        children: List<Widget>.generate(antennaimages.length,
                            (index) {
                          final image = antennaimages.keys.toList()[index];
                          final title = antennaimages[image]!;
                          return Container(
                            padding: EdgeInsets.only(bottom: 15),
                            // width: _iconspace,
                            width: double.infinity,
                            // height: 20,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: _iconsize,
                                    height: _iconsize,
                                    child: image,
                                  ),
                                  SizedBox(width: 30),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    width: 310,
                                    height: 45,
                                    child: Text(
                                      antennaimages[image]!,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: _fontsize,
                                        color: Color(0xFF025459),
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
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Footer(),
      ),
    );
  }
}
