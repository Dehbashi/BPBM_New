import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/header.dart';

import 'package:bpbm2/screens/components/faq.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'می تونم برای طراحی نقشه سیستم اعلام حریق از کارشناس های بسپارش به ما کمک بگیرم؟',
    answer: 'بله کارشناس‌های ما طراحی نقشه سیستم اعلام حریق رو هم انجام می‌دن.',
  ),

  FAQItem(
    question:
        'نقشه هایی که کارشناس های بسپارش به ما طراحی می کنن، استانداردها و تأییدیه های لازم آتش نشانی رو دارند؟',
    answer: 'بله تمام نقشه‌ها تأییدیه‌ی آتش‌نشانی رو دریافت می‌کنن.',
  ),

  FAQItem(
    question:
        'تهیه و خریداری بخش های مختلف سیستم اعلام حریق مثل دتکتور و آژیر با خودمه؟',
    answer:
        'کارشناس‌های بسپارش به ما می‌تونن اجزای مختلف سیستم اعلام حریق رو بعد از هماهنگی با شما تهیه کنن و همراه خودشون به محل بیارن.',
  ),

  FAQItem(
    question:
        'تأمین وسایل جانبی مورد نیاز برای اجرا یا تعمیر سیستم اعلام حریق با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),

  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات سیستم اعلام حریق توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات سیستم اعلام حریق بسپارش به ما استفاده کنم؟',
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

class FireAlarmPage extends StatefulWidget {
  @override
  State<FireAlarmPage> createState() => _FireAlarmPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'طراحی و نصب انواع سیستم‌های اعلام حریق',
  Image.asset('assets/icons/antennaicons/help.png'):
      'اجرای سیم‌کشی برای راه‌اندازی سیستم‌های اعلام حریق',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'عیب‌یابی و رفع خرابی سیستم‌های اعلام حریق',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'عیب‌یابی دستگاه کنترل مرکزی در سیستم اعلام حریق اتوماتیک',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'تعویض دتکتورها و سایر اجزای سیستم اعلام حریق',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'نصب و عیب‌یابی اجزای مختلف سیستم اعلام حریق شامل دتکتور، آژیر و شاسی.',
};

class _FireAlarmPageState extends State<FireAlarmPage> {
  final double headingpadding = 12;
  final double textpadding = 12;
  final double textsize = 16;
  final double answerpadding = 30;
  final double questionboxpadding = 8;
  final double questionboxborderradius = 7;
  final double _iconsize = 24;
  final double _fontsize = 16;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

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
                          'آشنایی با سرویس اعلام حریق',
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
                      'assets/images/services/firealarm.png',
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
                        'سیم‌کشی، راه‌اندازی و تعمیر سیستم اعلام حریق رو بسپارش به ما\n'
                        'برای سیم‌کشی و نصب سیستم اعلام حریق توی خونه یا محل کارت، کارشناس‌های بسپارش به ما رو خبر کن.\n'
                        'اگه سیستم اعلام حریق خونه یا محل کارت دچار مشکل شده، بسپارش به ما می‌تونه با کارشناس‌های متخصص، عیب‌یابی و تعمیر تجهیزات رو برات انجام بده.',
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
                              'سیستم اعلام حریق چه اجزایی داره و چطور کار می‌کنه؟',
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
                        'سیستم اعلام حریق همون‌طور که از اسمش مشخصه، وظیفه‌ی اطلاع‌رسانی در مورد آتیش‌سوزی رو توی ساختمون‌ها و فضاهای مختلف به عهده داره. سیستم‌های اعلام حریق قدیمی به صورت دستی عمل می‌کردن، یعنی شخصی که متوجه آتش‌سوزی می‌شد باید دکمه‌ی اعلام حریق رو فشار می‌داد تا آژیر هشدار برای باخبر کردن بقیه افراد حاضر توی ساختمون به صدا دربیاد. بدی سیستم اعلام حریق دستی این بود که حتما باید شخصی توی محیط حضور داشت تا آژیر رو به صدا دربیاره.\n'
                        'سیستم اعلام حریق اتوماتیک، این مشکل بزرگ رو برطرف می‌کنه، یعنی به صورت خودکار آتیش‌سوزی رو تشخیص می‌ده، آژیر رو به‌صدا درمیاره و از طریق ایستگاه مرکزی، حریق رو به آتش‌نشانی اعلام می‌کنه. سیستم‌های اتوماتیک از چند بخش تشکیل می‌شن. شستی اعلام، وسایل هشداردهنده (مثل آژیر یا زنگ و فلاشر)، دتکتورها و دستگاه کنترل مرکزی.\n'
                        'شستی اعلام رو عموما توی باکس‌های قرمزرنگ کوچیک که با طلق پوشونده شدن، روی دیوارها و توی راه پله‌ها می‌بینیم. وقتی فردی توی ساختمون از آتیش‌سوزی خبردار می‌شه، با شکستن طلق و فشار دادن دکمه، آژیر یا فلاشر رو به صدا در میاره. اما اگر کسی توی ساختمون نباشه که شستی اعلام رو فشار بده چی؟ اینجا دتکتورها وارد عمل می‌شن و با تشخیص علائم آتیش‌سوزی، آژیر رو به‌صدا در میارن. دتکتورها انواع مختلفی دارن که برحسب عوامل محیطی می‌شه یکی از انواعشون رو به‌کار برد. دتکتور دود، دتکتور حرارتی، دتکتور گاز و دتکتورهای ترکیبی. هرکدوم از این دتکتورها می‌تونن یکی از علا‌ئم آتیش مثل دود یا حرارت رو تشخیص بدن و آژیر رو به‌صدا دربیارن.\n'
                        'تمام پردازش‌های مربوط به سیستم اعلام حریق‌، توی دستگاه کنترل مرکزی انجام می‌شه. وظیفه‌ی اصلی سیستم کنترل مرکزی اینه که با استفاده از موقعیت دتکتوری که آتیش رو اعلام کرده، ناحیه‌ای که آتیش‌سوزی در اونجا اتفاق افتاده، تشخیص بده و آژیر رو توی اون منطقه به صدا دربیاره. توی سیستم‌های کنترل پیشرفته، وظیفه‌ی خبر دادن به آتش‌نشانی و فعال کردن سیستم اطفاء حریق هم با سیستم کنترل مرکزیه.\n'
                        'سیستم‌های اعلام حریق اتوماتیک به سه دسته تقسیم می‌شن: سیستم اتوماتیک متداول، سیستم اتوماتیک آدرس‌پذیر و سیستم اتوماتیک بی‌سیم. این سه نوع سیستم اعلام حریق، کمی توی روش کارشون با هم تفاوت دارن، اما پایه‌ی عملکردشون یه‌جوره.',
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
                              'بسپارش به ما برای سیستم اعلام حریق چه خدماتی ارائه می‌کنه؟',
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
