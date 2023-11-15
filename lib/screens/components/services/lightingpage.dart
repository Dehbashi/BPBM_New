import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:bpbm2/screens/components/faq.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'تأمین وسایل جانبی مورد نیاز برای اجرای نورپردازی ساختمون با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات نورپردازی ساختمون توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات نورپردازی ساختمون بسپارش به ما استفاده کنم؟',
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

class LightingPage extends StatefulWidget {
  @override
  State<LightingPage> createState() => _LightingPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'اجرای انواع نورپردازی محیط داخلی با انواع لوستر، هالوژن، مهتابی و نورمخفی',
  Image.asset('assets/icons/antennaicons/help.png'):
      'اجرای انواع نورپردازی محیط خارجی و محوطه‌ی ساختمان‌ها',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'اجرای نورپردازی نمای ساختمان‌ها',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'سیم‌کشی برای اجرای انواع نورپردازی',
};

class _LightingPageState extends State<LightingPage> {
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
                          'آشنایی با سرویس نورپردازی',
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
                      'assets/images/services/lighting.png',
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
                        'نورپردازی داخلی، محوطه یا نمای ساختمان رو بسپارش به ما\n'
                        'برای زیباتر کردن دکوراسیون خونه یا محل کارت نیاز به اجرای نورپردازی داری؟ کارشناس‌های بسپارش به ما می‌تونن انواع نورپردازی رو به حرفه‌ای‌ترین شکل برات اجرا کنن.\n'
                        'در حال ساخت‌وساز ساختمونی و به مرحله‌ی اجرای نورپردازی محوطه یا نما رسیدی؟\n'
                        'کارشناس‌های بسپارش به ما رو خبر کن تا کارهای اجرای نورپردازی رو برات انجام بدن.',
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
                              'نورپردازی به چه صورتی پیاده‌سازی می‌شه؟',
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
                        'نورپردازی رو باید یکی از مهم‌ترین عناصر توی دکوراسیون مدرن به‌حساب بیاریم، چون هم خود نورپردازی به زیباسازی فضا خیلی کمک می‌کنه و هم باعث می‌شه بقیه‌ی قسمت‌های دکوراسیون جلوه‌ی بیشتری داشته باشن. با این حساب، نورپردازی یه جور هنره و همون‌طور که برای طراحیش باید به یه آدم متخصص رجوع کرد، اجراش رو هم باید به افراد باسلیقه و حرفه‌ای سپرد که هم بتونن کار رو تمیز دربیارن و هم از نظر فنی، کار رو بدون عیب و ایراد اجرا کنن.\n'
                        'نورپردازی رو می‌شه با دو نوع نور طبیعی و نور مصنوعی انجام داد. نور طبیعی همون نور خورشیده و برای کنترل یا کم‌وزیاد کردنش توی نورپردازی از بازشوها استفاده می‌شه. نور مصنوعی هم که از طریق برق و جریان الکتریسیته تغذیه می‌شه و روی سقف، دیوار یا کف اجرا می‌شه.\n'
                        'برای اجرای بهتر نورپردازی، باید ویژگی‌های مختلف نور مدنظر قرار بگیره. ویژگی‌هایی مثل شدت و جهت نور، نقش خیلی مهمی توی نحوه‌ی دیده شدن نورپردازی دارن. مثلا اگه شدت نور کم یا زیاد باشه، می‌تونه دیده نشه یا باعث خسته و زده شدن چشم شما بشه.\n'
                        'نورپردازی رو می‌شه براساس مولفه‌های متفاوتی دسته‌بندی کرد، اما رایج‌ترین دسته‌بندیش براساس نحوه‌ی تابش نوره و سه نوع داره: نورپردازی عمومی، نورپردازی موضعی، نورپردازی متمرکز. نورپردازی عمومی، رایج‌ترین نوعشه و نوری که توی این حالت تحویل می‌گیریم خیلی یکنواخت و ملایمه. مثلا نور لوستر رو می‌شه جزو نورپردازی عمومی دسته‌بندی کرد.\n'
                        'نورپردازی موضعی بیشتر توی فضاهای اداری به‌کار می‌ره و یه بخش از فضا رو به‌صورت یکنواخت روشن می‌کنه. مثلا یه میز کار که با آباژور روشن می‌شه. نورپردازی متمرکز رو برای شاخص کردن اجزا به کار می‌برن و کاملا می‌شه جهت و شدت نور رو توی این نوع نورپردازی به‌صورت واضح دید. نورهای نقطه‌ای از دسته‌ی نورپردازی متمرکز هستن.\n'
                        'وقتی می‌خواین برای فضای داخلی، فضای بیرونی و محوطه یا نمای ساختمون نورپردازی رو اجرا کنین، باید نوع و تعداد منابع نور و محل نصبشون رو کامل مشخص کرده باشین. برای اجرا هم کافیه کارشناس‌های بسپارش به ما رو خبر کنین تا براساس طراحی و نقشه نورپردازی، کار رو به بهترین شکل براتون اجرا کنن.',
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
                              'بسپارش به ما برای اجرای نورپردازی ساختمان چه خدماتی ارائه می‌کنه؟',
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
