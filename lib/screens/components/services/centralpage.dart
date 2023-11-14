import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'نمی دونم باید از چه نوع سانترال و با چه ظرفیتی برای محل کارم استفاده بشه، می تونم از کارشناس های بسپارش به ما مشاوره بگیرم؟',
    answer:
        'بله هر سوالی که در مورد راه‌اندازی سانترال داشته باشین، می‌تونین از مشاوره‌ی کارشناس‌های بسپارش به ما استفاده کنین.',
  ),
  FAQItem(
    question:
        'امکانش هست برای نصب و راه اندازی، سانترال رو خود کارشناس تهیه کنه؟',
    answer:
        'بله کارشناس می‌تونه بعد از هماهنگی با شما و مشخص شدن ادوات مورد نیاز، خودش اون‌ها رو تهیه کنه و به محل بیاره.',
  ),
  FAQItem(
    question:
        'کارشناس های بسپارش به ما می تونن علاوه بر کابل کشی سانترال، کدها و تنظیمات نرم افزاری سانترال رو هم انجام بدن؟',
    answer:
        'بله. کارشناس‌های بسپارش به ما توی تمام مراحل نصب و راه‌اندازی سانترال وارد هستن و می‌تونن صفر تا صد کارها رو براتون انجام بدن.',
  ),
  FAQItem(
    question:
        'برای مشکلاتی مثل بوق نداشتن یا خط رو خط شدن تلفن های داخلی که به سانترال وصل هستن، می تونم از خدمات کارشناس های بسپارش به ما استفاده کنم؟',
    answer:
        'بله هر مشکل یا عیبی که توی سیستم تلفن داخلی محل کارتون به‌وجود اومده، می‌تونین از خدمات بسپارش به ما استفاده کنین.',
  ),
  FAQItem(
    question: 'تأمین وسایل جانبی مورد نیاز برای خدمات سانترال با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات سانترال توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات سانترال بسپارش به ما استفاده کنم؟',
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

class CentralPage extends StatefulWidget {
  @override
  State<CentralPage> createState() => _CentralPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'سیم‌کشی خطوط تلفن داخلی و سانترال',
  Image.asset('assets/icons/antennaicons/help.png'):
      'نصب و راه‌اندازی انواع سانترال',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'برنامه‌ریزی یا ارتقا سانترال',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'عیب‌یابی و رفع مشکل سانترال',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'نصب یا تعویض تجهیزات جانبی سانترال مثل باتری',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'اضافه کردن خطوط داخلی جدید به سانترال',
};

class _CentralPageState extends State<CentralPage> {
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
                          'آشنایی با سرویس سانترال',
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
                      'assets/images/services/central.png',
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
                        'خدمات سانترال محل کارت رو بسپارش به ما\n'
                        'شرکت محل کارت نیاز به نصب و راه‌اندازی سانترال داره؟ صفر تا صدش رو بسپارش به ما.\n'
                        'خطوط داخلی تلفن شرکت دچار مشکل شده و نیاز به عیب‌یابی و رفع مشکل داره؟ کارشناس‌های بسپارش به ما مشکل رو پیدا و برطرف می‌کنن.\n'
                        'شرکت محل کارت سانترال داره، اما باید ارتقا پیدا کنه یا برنامه‌ریزی بشه؟ بسپارش به ما تمام کارهای مورد نیاز رو انجام می‌ده.',
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
                              'سانترال چیه و چه انواعی داره؟',
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
                        'توی شرکت‌ها، ادارات و سازمان‌ها، یکی از بهترین و بهینه‌ترین راه‌های ارتباطی بخش‌ها و کارمندها با هم، خطوط تلفن داخلی سازمان هستن. در واقع به هر کارمند، یه شماره تلفن داخلی تعلق می‌گیره و برای ارتباط باهاش،‌ دیگران هم از همون شماره تلفن استفاده می‌کنن. اما برای راه‌اندازی خطوط داخلی تلفن، یه بخش مرکزی لازمه که تمام شماره‌ها بهش متصل باشن. برای راه‌اندازی چنین سیستمی به مرکز تلفن و سانترال نیازه.\n'
                        'مرکز تلفنی که توی سازمان‌ها راه‌اندازی می‌شه، از یک دستگاه سانترال به‌عنوان هسته‌ی اصلی استفاده می‌کنه. تمام خطوط تلفن داخلی سازمان از سانترال خارج می‌شه و به کارمندها می‌رسه. درواقع خطوط تلفن شهری وارد سانترال می‌شن و از اون سمت خطوط داخلی خارج می‌شن.\n'
                        'سانترال رو از نظر طرز کار و عملکردش می‌شه به دو دسته‌ی سانترال آنالوگ و سانترال‌های تحت شبکه ( (VOIPتقسیم‌بندی کرد. سانترال آنالوگ از خطوط شهری و معمولی پشتیبانی می‌کنه، روی بستر زوج‌سیم‌های مخابراتی پیاده‌سازی می‌شه و با پست تلفن به باکس و کارت‌های سانترال ارتباط پیدا می‌کنه. اما سانترال تحت شبکه بر اساس IP و روی بستر شبکه پیاده‌سازی می‌شه.\n'
                        'یعنی با سانترال آنالوگ از طریق کابل مخابراتی و سیستم رادیویی ارتباط تلفنی برقرار می‌کنین اما توی سانترال‌های VOIP از پروتکل صدا روی اینترنت ارتباط می‌گیرین.\n'
                        'به جز نوع کار، سانترال‌ها از نظر ظرفیت هم به دو دسته‌ی پرظرفیت و کم‌ظرفیت تقسیم می‌شن. سانترال پرظرفیت برای سازمان‌هایی که می‌خوان تعداد خطوط داخلی بالایی داشته باشن مناسبه و می‌تونه تا ۹۶۰ خط داخلی رو پشتیبانی بکنه. سانترال کم‌ظرفیت هم برای سازمان‌هایی که تعداد خطوط داخلی کمتری نیاز دارن، گزینه‌ی بهتریه و تا ۲۴ خط داخلی ارائه می‌کنه.\n'
                        'سانترال هم مثل خیلی از وسایل الکترونیکی دیگه‌ای که باهاشون سروکار داریم، یه بخش سخت‌افزاری و یه بخش نرم‌افزاری دارن. برای انجام تنظیمات سانترال باید کدهای مورد نیاز وارد سیستم سانترال بشه و ارتباط معناداری بین بخش‌های مختلف سیستم برقرار بشه. یعنی کار شخصی که داره سانترال رو راه‌اندازی می‌کنه اینه که هم کابل‌ها و سیم‌کشی‌ها رو نصب و راه‌اندازی بکنه و هم بخش تنظیمات نرم‌افزاری سانترال رو انجام بده.',
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
                              'بسپارش به ما برای سانترال چه خدماتی ارائه می‌کنه؟',
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
