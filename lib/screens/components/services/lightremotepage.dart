import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';
import 'package:bpbm2/screens/components/header.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'چند وقتیه که لوسترم با ریموت کنترل خاموش و روشن نمیشه، کارشناس های بسپارش به ما برای عیب یابی و تعمیرش خدمات ارائه می کنن؟',
    answer:
        'بله، کارشناس‌های بسپارش به ما می‌تونن در صورت نیاز به عیب‌یابی یا تعمیر و تعویض سیستم ریموت روشنایی هم در محل شما حاضر بشن.',
  ),
  FAQItem(
    question: 'تأمین وسایل جانبی مورد نیاز برای خدمات ریموت روشنایی با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات ریموت روشنایی توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات ریموت روشنایی بسپارش به ما استفاده کنم؟',
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

class LightRemotePage extends StatefulWidget {
  @override
  State<LightRemotePage> createState() => _LightRemotePageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'نصب و راه‌اندازی ریموت روشنایی برای انواع لوستر و چراغ',
  Image.asset('assets/icons/antennaicons/help.png'):
      'عیب‌یابی و تعمیر سیستم ریموت روشنایی',
};

class _LightRemotePageState extends State<LightRemotePage> {
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
                          'آشنایی با سرویس ریموت روشنایی',
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
                      'assets/images/services/lightremote.png',
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
                        'نصب و تعمیر ریموت روشنایی رو بسپارش به ما\n'
                        'برای اینکه توی خونه یا محل کارت بتونی لامپ و لوسترها رو با ریموت کنترل خاموش و روشن کنی، نصب و راه‌اندازی ریموت کنترل رو بسپارش به ما.\n'
                        'اگه ریموت لوسترت درست کار نمی‌کنه یا از کار افتاده، تعمیرش رو بسپارش به ما برات انجام می‌ده.',
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
                              'ریموت کنترل روشنایی چیه و چطور کار می‌کنه؟',
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
                        'حتما تا حالا خیلی براتون پیش اومده که دلتون نخواد برای روشن و خاموش کردن چراغ اتاق از جاتون پا شین و پیش خودتون بگین کاش لامپ یا لوستر هم ریموت کنترل داشت و می‌شد از راه دور خاموش و روشنش کرد. خبر خوب اینکه با صرف یه هزینه‌ی معقول می‌شه برای لوستر یا چراغ‌های خونه و محل کارتون سیستم کنترل از راه دور راه‌اندازی کنین و دیگه لازم نباشه برای روشن و خاموش کردن چراغ از جاتون بلند بشین.\n'
                        'ریموت کنترل روشنایی از دو بخش تشکیل می‌شه: یه بخش گیرنده که روی لوستر یا چراغ نصب شده و بهش ترانس یا سوییچر هم می‌گن و یه بخش فرستنده یا همون ریموت کنترلی که ما ازش استفاده می‌کنیم. درواقع ما دستور خاموش و روشن شدن چراغ رو از طریق ریموت به فرستنده ارسال می‌کنیم و اون هم به چراغ‌ها فرمان می‌ده که خاموش یا روشن بشن.\n'
                        'سیستم ریموت کنترل لوستر یا چراغ، انواع مختلفی داره که براساس تعداد کانال دسته‌بندی می‌شه. اگه ترانس یا سوییچر رو از نزدیک ببینین، متوجه می‌شین که دوتا سیم مشکی و یه سیم قرمز داره که یه سمت هستن و بقیه‌ی سیم‌ها هم هرکدوم یه رنگ دارن و یه سمت دیگه‌ی ترانس وصلن. اون سیم قرمز ورودی فاز ترانسه و دوتا سیم مشکی هم ورودی و خروجی نول ترانس هستن. سیم‌هایی که به رنگ دیگه هستن و یه کم با فاصله از سیم‌های قرمز و مشکی از توی ترانس دراومدن، هرکدوم به یکی از کانال‌ها ربط پیدا می‌کنن. به‌تعداد سیم‌های رنگی که توی این قسمت می‌بینین، روی ریموت کنترل هم دکمه وجود داره. مثلا توی ریموت کنترل چهارکاناله که برای لوسترها استفاده می‌شه، به جز سیم‌های مشکی و قرمز، چهارتا سیم رنگی داریم و روی ریموت هم چهارتا کلید A و B و C و D داریم. هر کلید رو می‌شه برای کنترل یکی از کانال‌ها یا همون سیم‌های رنگی استفاده کرد.\n'
                        'سیتم‌های ریموت روشنایی از تک‌کانال تا چهار کانال توی بازار وجود دارن. براساس تعداد چراغی که می‌خواین با ریموت خاموش و روشن بشن، باید یه ریموت با تعداد کانال مناسب انتخاب کنین. توی لوسترهایی که تعداد چراغشون زیاده، عموما هر کانال کار کنترل چندتا چراغ رو به‌عهده داره. یعنی شما با فشار دادن یکی از کلیدهای ریموت، همزمان چندتا چراغ رو خاموش و روشن می‌کنین.\n'
                        'شاید براتون سوال پیش اومده باشه که آیا می‌شه روی هرنوع چراغی سیستم ریموت کنترل نصب کرد؟ بله، می‌شه؛ به‌شرط اینکه اون چراغ جای مناسب برای قرار گرفتن ترانس یا سوییچر رو داشته باشه. برای نصب ترانس روی لوسترها عموما مشکلی وجود نداره و جای کافی در اختیارتون قرار می‌گیره. اما برای چراغ‌ها بستگی داره و این مسأله رو حتی اگه خودتون هم نتونین متوجه بشین،‌ می‌تونین از یه کارشناس متخصص در موردش بپرسین.',
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
                              'بسپارش به ما برای ریموت روشنایی چه خدماتی ارائه می‌کنه؟',
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
