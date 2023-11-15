import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'برای نصب و راه‌اندازی وای‌فای، کارشناس می‌تونه مودم رو خودش تهیه کنه؟',
    answer:
        'کارشناس می‌تونه قبل از حاضر شدن در محل شما، در صورتی که جانمایی و تعداد تجهیزات مشخص شده باشه خودش وسایل مورد نیاز رو تهیه کنه و همراهش بیاره.',
  ),
  FAQItem(
    question:
        'اتصال اینترنتم به مشکل برخورده و بهم گفتن مشکل از خط داخلی خونه‌ست. می‌تونم از کارشناس‌های بسپارش به ما کمک بگیرم؟',
    answer:
        'بله، کافیه خدمات مدنظرتون رو توی بسپارش به ما ثبت کنین تا کارشناس‌های ما برای عیب‌یابی و انجام تعمیرات یا تعویض تجهیزات در محل شما حاضر بشن.',
  ),
  FAQItem(
    question: 'بسپارش به ما خدمات عیب‌یابی و تعمیر مودم هم ارائه می‌کنه؟',
    answer:
        'بله، کافیه خدمات مدنظرتون رو توی بسپارش به ما ثبت کنین تا کارشناس‌های ما برای عیب‌یابی و انجام تعمیرات یا تعویض تجهیزات در محل شما حاضر بشن.',
  ),
  FAQItem(
    question:
        'تأمین وسایل جانبی مورد نیاز برای نصب و راه‌اندازی مودم وای‌فای با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای نصب و راه‌اندازی مودم وای‌فای توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات دزدگیر اماکننصب و راه‌اندازی مودم وای‌فای بسپارش به ما استفاده کنم؟',
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

class ModemPage extends StatefulWidget {
  @override
  State<ModemPage> createState() => _ModemPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'نصب و راه‌اندازی مودم‌های وایرلس و ADSL',
  Image.asset('assets/icons/antennaicons/help.png'):
      'انجام تنظیمات انواع مودم‌ها',
  Image.asset('assets/icons/antennaicons/help.png'):
      'رمزگذاری روی مودم و تغییر رمز',
  Image.asset('assets/icons/antennaicons/help.png'):
      'عیب‌یابی و رفع مشکل مودم‌های وایرلس و ADSL',
};

class _ModemPageState extends State<ModemPage> {
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
                          'آشنایی با سرویس نصب وای فای',
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
                      'assets/images/services/modem.png',
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
                        'راه‌اندازی، نصب و عیب‌یابی وای‌فای رو بسپارش به ما.\n'
                        'نیاز به متخصصی داری که وای‌فای خونه یا محل کارت رو راه بندازه؟ کارشناس‌های بسپارش به ما رو صدا کن.\n'
                        'مودم وای‌فای روشن می‌شه اما اینترنت نداری؟ کارشناس‌های بسپارش به ما کار عیب‌یابی رو برات انجام می‌دن.',
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
                              'برای راه‌اندازی اینترنت وای‌فای چه کارهایی لازمه؟',
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
                        'خیلی از ماها روزایی که با اینترنت دایال آپ به اینترنت وصل می‌شدیم رو کامل یادمونه. سرعت لاک‌پشتی دایال آپ، سروصدای مودم کامپیوترها، کارت‌های شارژی اینترنت و اعتراض پدرومادرهامون به اینکه خط تلفن چرا همیشه اشغاله، اولین خاطره‌های ما از وصل شدن به اینترنته. اما این‌روزها دیگه اوضاع عوض شده و اینترنت پرسرعت تجربه‌مون از ارتباطات رو کاملا تغییر داده. باوجود شبکه‌های اینترنت پرسرعت، خیلی بعیده که کسی به فکر راه‌اندازی شبکه‌ی وای‌فای یا اینترنت بی‌سیم برای خونه و محل کارش نیفتاده باشه. شبکه‌های بی‌سیم می‌تونن توی محل‌های مختلف گزینه‌ی ایده‌آلی برای وصل شدن به اینترنت باشن و کاربرها و دستگاه‌های زیادی رو همزمان به اینترنت وصل کنن.\n'
                        'شاید بد نباشه بدونین که اینترنت پرسرعت رو می‌شه هم روی خطوط تلفن ثابت و هم به‌صورت بی‌سیم دریافت کرد. اینترنت ثابت که روی خط تلفنتون دریافت می‌شه، از نظر هزینه به‌صرفه‌تر از اینترنت موبایل درمیاد و برای همین گزینه‌ی جذاب‌تری برای خیلی‌هاست.\n'
                        'برای اینکه بشه به اینترنت ثابت وصل شد، نیاز به دستگاهی به اسم مودم داریم که کار اتصال ما به اینترنت رو انجام می‌ده. مودم مثل یه واسطه عمل می‌کنه و کار تبدیل سیگنال آلوگ به دیجیتال و دیجیتال به آنالوگ رو انجام می‌ده. یعنی سیگنال ارتباطی آنالوگ رو از طریق خط تلفن یا امواج دریافت می‌کنه و اون‌ها رو برای استفاده‌ی دستگاه‌های الکترونیکی به سیگنال دیجیتال تبدیل می‌کنه و بالعکس.\n'
                        'مودم‌ها انواع مختلفی دارن و بسته به بستری که روی اون دارن اینترنت رو برای ما فراهم می‌کنن، با اسم‌های خاصی شناخته می‌شن. مودم‌های ADSL اینترنت رو از طریق خط تلفن ثابت به ما ارائه می‌کنن. مودم‌های 4G و TD-LTE هم اینترنت پرسرعت رو بدون نیاز به خط تلفن ثابت و به صورت بی‌سیم در اختیار ما قرار می‌دن. این نوع مودم‌ها اتصال به اینترنت رو از طریق ایستگاه‌های فرستنده امواج یا همون BTS و با استفاده از سیم‌کارت برای کاربرها تأمین می‌کنن.\n'
                        'اگه می‌خواین برای محل کار یا خونه‌تون اینترنت بی‌سیم یا وای‌فای ADSL راه‌اندازی کنین باید درنظر داشته باشین که قبل از خبر کردن کارشناس شبکه برای نصب مودم، اول باید خط تلفنی که می‌خواین روش اینترنت داشته باشین آماده باشه. یعنی اول با شرکت سرویس‌دهنده‌ای که می‌خواین از خدمات اینترنت پرسرعتش استفاده کنین صحبت می‌کنین و اونا مراحل لازم برای آماده کردن خط تلفنتون که بهش رانژه کردن خط می‌گن رو پیگیری می‌کنن. بعد از آماده‌سازی خط تلفنتون، نوبت خبر کردن کارشناس شبکه یا نصاب برای راه‌اندازی اینترنت پرسرعته. کارشناس تنظیمات مودم رو براتون انجام می‌ده و چک می‌کنه که تمام اتصالات درست وصل بشن تا بتونین اینترنت رو با بهترین کیفیت دریافت کنین.',
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
                              'بسپارش به ما برای اینترنت وای‌فای چه خدماتی ارائه می‌کنه؟',
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
