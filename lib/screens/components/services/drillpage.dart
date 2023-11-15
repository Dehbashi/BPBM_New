import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/header.dart';

import 'package:bpbm2/screens/components/faq.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'علاوه بر دریل کاری، می تونم برای نصب تلویزیون روی دیوار هم از بسپارش به ما کمک بگیرم؟',
    answer:
        'بله کارشناس‌های بسپارش به ما خدمات نصب تلویزیون‌های دیواری رو هم انجام می‌دن و می‌تونین درخواستتون رو از بخش نصب تلویزیون‌های دیواری ثبت کنین.',
  ),

  FAQItem(
    question: 'تأمین وسایل جانبی مورد نیاز برای خدمات دریل کاری با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات دریل کاری توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات دریل کاری بسپارش به ما استفاده کنم؟',
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

class DrillPage extends StatefulWidget {
  @override
  State<DrillPage> createState() => _DrillPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'انجام انواع دریل کاری روی سطوح داخلی و خارجی',
  Image.asset('assets/icons/antennaicons/help.png'):
      'دریل کاری و سوارخ کاری روی چوب، فلز، دیوار آجری و سنگی',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'دریل کاری روی بتن و مصالح سخت',
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'سوراخ کاری برای نصب چوب پرده',
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'سوراخ کاری برای نصب تلویزیون و پنکه سقفی و دیواری',
};

class _DrillPageState extends State<DrillPage> {
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
                          'آشنایی با سرویس دریل کاری',
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
                      'assets/images/services/drill.png',
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
                        'خدمات دریل کاری و سوراخ کاری رو بسپارش به ما\n'
                        'اگه برای کارهای مختلف مثل نصب پرده، تابلو، لوستر یا قفسه‌بندی، نیاز به دریل‌کاری داری، کارشناس‌های بسپارش به ما رو صدا کن.',
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
                              'دریل کاری چیه و با چه وسایلی انجام می‌شه؟',
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
                        'دریل کاری فرآیندیه که طی اون سوراخ‌هایی با عمق و قطر مشخص روی سطوح مختلف ایجاد می‌شه. مهم‌ترین وسیله‌ای که برای دریل‌کاری نیازه خود دریل هست. دریل انواع و دسته‌بندی‌های مختلفی داره. اگه بخوایم دریل‌ها رو براساس نیروی محرکه دسته‌بندی کنیم، به سه دسته می‌رسیم.\n'
                        'دریل‌های دستی، دریل‌های برقی و دریل‌های شارژی. دریل‌های دستی دیگه الان به‌کار نمی‌رن و منسوخ شدن. منبع تغذیه‌ی دریل‌های شارژی، باتریه و در مقایسه با دریل برقی که برای کار باید به برق وصل باشه، قدرت کمتری ارائه می‌کنه. برای همین توی کارهایی که نیاز به دریل کاری زیادی دارن یا برای سوراخ کردن سطوحی مثل بتن، از دریل‌های برقی استفاده می‌شه.\n'
                        'دریل‌ها براساس کاربردشون هم به چند دسته تقسیم می‌شن. دریل پیچ‌گوشتی، پرکاربردترین نوع دریله و هم مدل شارژی داره هم مدل برقی. برای سوراخ کردن سطوح پلاستیکی، چوبی، فلزی و بتنی می‌شه از دریل‌های پیچ‌گوشتی استفاده کرد. دریل ضربه‌ای یه نوع دیگه دریله که مکانیزم کارش ترکیبی از چرخش و ضربه زدنه. همون‌طور که از نوع کار این دریل هم می‌شه فهمید، برای سوراخ کردن مصالح سخت خیلی مناسبه. دریل چکشی هم شبیه دریل ضربه‌ای عمل می‌کنه با این تفاوت که می‌شه قدرت ضربه‌ی اون رو تنظیم کرد تا هم بشه روی مصالح نرم‌تر و هم روی مصالح سخت‌تر ازش استفاده کرد.\n'
                        'دریل بتن‌کن یه نوع دریل پرقدرت دیگه‌ست که می‌شه مصالح سخت رو باهاش سوراخ کرد. در نهایت هم دریل ستونی رو داریم که توی دریل‌کاری‌های صنعتی ازش استفاده می‌شه و دقت عمل بالایی هم داره. دریل ستونی رو روی میز نصب می‌کنن و ازش برای سوراخ کردن سطوح چوبی، پلاستیکی یا فلزی استفاده می‌کنن.\n'
                        'توی تمام دریل‌ها، مته کار سوراخ کردن سطح رو انجام می‌ده. مته هم انواع و شکل‌های مختلفی داره و بر اساس سطحی که داره روش کار انجام می‌شه و همین‌طور سوراخی که قراره روی سطح ایجاد بشه، باید مته‌ی مناسب رو انتخاب کرد. اگه نوع مته درست انتخاب نشه، علاوه‌براینکه به سطح آسیب می‌رسونه، ‌باعث شکستن مته و خراب شدن دریل یا زخمی شدن سطح هم می‌شه.',
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
                              'بسپارش به ما برای دریل‌کاری چه خدماتی ارائه می‌کنه؟',
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
