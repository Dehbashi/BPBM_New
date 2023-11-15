import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/header.dart';

import 'package:bpbm2/screens/components/faq.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'اگه پنکه سقفی یا دیواری داشته باشم و توی محلش شل شده باشه می تونم از بسپارش به ما کمک بگیرم؟',
    answer:
        'بله کارشناس‌های بسپارش به ما می‌تونن پنکه رو توی محلش براتون محکم کنن.',
  ),

  FAQItem(
    question:
        'می تونم برای جابجایی پنکه دیواری یا سقفی از خدمات بسپارش به ما استفاده کنم؟',
    answer:
        'بله اگه بخواین پنکه‌ی سقفی یا دیواری‌تون رو جابه‌جا کنین، کارشناس‌های ما می‌تونن این کار رو براتون انجام بدن.',
  ),

  FAQItem(
    question:
        'تأمین وسایل جانبی مورد نیاز برای خدمات پنکه دیواری و سقفی با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),

  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات پنکه دیواری و سقفی توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات پنکه دیواری و سقفی بسپارش به ما استفاده کنم؟',
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

class CeilingFanPage extends StatefulWidget {
  @override
  State<CeilingFanPage> createState() => _CeilingFanPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'سیم‌کشی و نصب قلاب برای پنکه‌ی سقفی',
  Image.asset('assets/icons/antennaicons/help.png'):
      'نصب انواع پنکه سقفی و دیواری',
  Image.asset('assets/icons/antennaicons/help.png'):
      'عیب‌یابی و تعمیر انواع پنکه‌ی سقفی و دیواری',
};

class _CeilingFanPageState extends State<CeilingFanPage> {
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
                          'آشنایی با سرویس نصب پنکه',
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
                      'assets/images/services/ceilingfan.png',
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
                        'خدمات نصب و تعمیر پنکه سقفی و دیواری رو بسپارش به ما\n'
                        'می‌خوای پنکه سقفی یا دیواری توی خونه‌ت نصب کنی؟ کارشناس‌های بسپارش به ما صفر تا صد کار رو برات انجام می‌دن.\n'
                        'پنکه‌ت دچار مشکل شده یا درست کار نمی‌کنه و نیاز به تعمیر  و سرویس داره؟ کارشناس‌های بسپارش به ما رو صدا کن تا کار عیب‌یابی و سرویس رو برات انجام بدن.',
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
                              'کجاها می‌شه پنکه سقفی یا دیواری نصب کرد؟',
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
                        'قدیم‌ترها بیشتر خونه‌ها پنکه‌های سقفی یا دیواری داشتن و توی روزهای گرم تابستون صدای چرخیدن پره‌های پنکه و نسیم ملایمی که توی خونه جریان داشت،‌ حس ثابت و آشنای تابستون‌های کودکی‌مون بود. از اونجایی که پنکه پای ثابت لوازم خونه بود، تقریبا توی تمام خونه‌ها به‌خصوص قسمت‌های هال و پذیرایی، جا و سیم‌کشی‌های مورد نیاز برای نصب پنکه وجود داشت.\n'
                        'مهم‌ترین نکته‌ای که باید موقع نصب پنکه بهش توجه داشت اینه که می‌خوایم پنکه بتونه هوای کل فضای مدنظر رو جابه‌جا کنه، برای همین عموما باید وسط سقف اون محل نصب بشه. اگه سیم‌کشی برای چراغ سقفی داشته باشین، می‌شه از همون برای نصب پنکه سقفی استفاده کرد. اگر هم نباشه که باید سیم‌کشی انجام بشه تا یه کابل برق به مرکز سقف برسه. بعدش هم نصاب پنکه می‌تونه بقیه‌ی کارهای نصب پنکه رو انجام بده.\n'
                        ' شرایط نصب پنکه‌ی دیواری یه مقدار با پنکه سقفی متفاوته. پنکه دیواری رو باید توی فضایی نصب کرد که اولا سیم مناسب و کلید پریز برق برای وصل کردن پنکه توی محدوده وجود داشته باشه و دوما اینکه پنکه بتونه توی یه دور چرخش، باد رو به کل فضا برسونه. در ضمن باید روی دیوار به اندازه‌ی کافی جا وجود داشته باشه که بشه لوازم و تجهیزات مورد نیاز برای نصب پنکه رو روی دیوار جا داد. نصاب‌های پنکه‌ی دیواری بعد از بررسی محیط و شرایط اتاق یا فضا، می‌تونن بهتون مشاوره بدن که بهترین محل برای نصب پنکه دیواری کجاست.\n'
                        'پنکه هم مثل هر وسیله‌ی برقی-مکانیکی دیگه‌ای ممکنه بعد از یه مدت کار کردن دچار مشکل بشه. یکی از مشکلات رایج پنکه اینه که سروصداش موقع کار کردن زیاد باشه و شما رو آزار بده. این ایراد رو ممکنه بشه با تمیز کردن یا سرویس کردن کلی پنکه برطرف کرد. از اونجایی که موتور پنکه توی همون فضای اتاق قرار داره و سرپوشیده هم نیست، خیلی در معرض آلودگی و گردوغبار محیط قرار داره.\n'
                        'با تمیز کردن قطعات داخلی پنکه احتمالا مشکل سروصدای زیادش هم برطرف بشه. بهتره برای تمیز کردن پنکه از یه آدم متخصص که به کار پنکه وارده کمک بگیرین چون اگه وارد نباشین ممکنه موقع تمیز کردن قطعات پنکه بهش آسیب برسه. مشکل سروصدا ممکنه با روغن‌کاری بلبرینگ‌ها و محور پنکه هم برطرف بشه. متخصصی که برای تعمیر یا سرویس پنکه خبر می‌‌کنین، بعد از عیب‌یابی و تشخیص مشکل پنکه، تعمیرات و سرویس‌های لازم رو براتون انجام می‌ده.',
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
                              'بسپارش به ما برای پنکه سقفی و دیواری چه خدماتی ارائه می‌کنه؟',
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
