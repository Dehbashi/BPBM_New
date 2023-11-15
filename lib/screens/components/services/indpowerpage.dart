import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';

import 'package:bpbm2/screens/components/faq.dart';
import 'package:bpbm2/screens/components/header.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'طراحی و نقشه ای که کارشناس های بسپارش به ما برای تابلو برق ساختمون ارائه می کنن تأییدیه های اداره برق رو دریافت می کنه؟',
    answer:
        'بله تمام نقشه‌های مربوط به تابلو برق ساختمون که توسط کارشناس‌های بسپارش به ما تهیه می‌شه، تأییدیه‌های لازم رو از اداره برق برای اجرا دریافت می‌کنن.',
  ),

  FAQItem(
    question:
        'بسپارش به ما می تونه تابلوهای سه فاز رو هم اجرا و راه اندازی کنه؟',
    answer: 'بله کارشناس‌های بسپارش به ما این خدمات رو هم ارائه می‌کنن.',
  ),

  FAQItem(
    question:
        'تأمین وسایل جانبی مورد نیاز برای خدمات تابلو برق ساختمون با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),

  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات تابلو برق ساختمون توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات تابلو برق ساختمون بسپارش به ما استفاده کنم؟',
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

class IndPowerPage extends StatefulWidget {
  @override
  State<IndPowerPage> createState() => _IndPowerPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'طراحی و اجرای انواع تابلو برق ساختمان',
  Image.asset('assets/icons/antennaicons/help.png'):
      'کابل‌کشی برق صنعتی و انواع تابلوهای برق ساختمان',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'داکت‌کشی برای تابلوهای برق ساختمان',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'عیب‌یابی تابلوهای برق ساختمان',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'رفع اتصالی و قطعی برق ساختمان',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'نصب و تعویض جعبه مینیاتوری',
};

class _IndPowerPageState extends State<IndPowerPage> {
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
                          'آشنایی با سرویس برق صنعتی',
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
                      'assets/images/services/indpower.png',
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
                        'خدمات برق صنعتی و تابلو برق ساختمان رو بسپارش به ما\n'
                        'برای نصب و راه‌اندازی تابلو برق ساختمون نیاز به مشاوره و اجرا داری؟ بسپارش به ما همه‌ی کارها رو برات انجام می‌ده.\n'
                        'اگه نیاز به عیب‌یابی یا طراحی تابلو برق داری، بسپارش به ما بهترین کارشناس‌هاش رو برات در نظر می‌گیره.',
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
                              'تابلو برق ساختمان چیه و چه انواعی داره؟',
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
                        'اگه بخوایم به‌طور خلاصه بگیم، تابلو برق یکی از مهم‌ترین اجزای برق ساختمونه و علاوه‌براینکه وظیفه‌ی حفاظت از مدارها، کنترل و فرمان دادن بهشون رو به‌عهده داره، توزیع برق در ساختمون رو هم مدیریت می‌کنه. تابلو برق از عناصر مختلفی تشکیل شده که شامل المان‌های حفاظتی و کنترلی مثل کلیدهای اتوماتیک، کلیدهای مغناطیسی، رله‌های کنترلی و نمایشگرها می‌شه و از مدارهای برق در برابر اتصال کوتاه، اضافه بار، آتیش‌سوزی و برق‌گرفتگی محافظت می‌کنه.\n'
                        'تابلو برق ساختمون انواع مختلفی داره که هرکدوم برای مدیریت یه بخش از برق ساختمون به کار می‌رن و می‌تونن شامل تابلو برق اصلی (MDP)، تابلو مشاعات، تابلو واحدها (تابلو مینیاتوری)، تابلو جریان ضعیف، تابلو آسانسور، تابلو توزیع برق دیزل ژنراتور و تابلو توزیع برقUPS باشن.\n'
                        'احتمالا می‌تونین حدس بزنین که بعضی از این موارد ممکنه توی همه‌ی ساختمون‌ها وجود نداشته باشه. مثلا اگه ساختمون آسانسور یاUPS نداشته باشه، تابلو برقی هم براشون وجود نداره.کابل اصلی برق بعد از ورود به داخل ساختمون، وارد تابلوی برق اصلی یا تابلوی کنتور می‌شه. این تابلو کارش اینه که برق تمام واحدها و مشاعات ساختمون رو تأمین کنه. کنتورها هم توی همین تابلو قرار دارن و با توجه به تعداد واحدهای ساختمون و وجود تابلوی اشتراکی، می‌شه تعداد کنتورها رو تعیین کرد. کنتور واحدها تک‌فازه و در صورتی که توی ساختمون آسانسور وجود داشته باشه، تابلوی اشتراکی به صورت سه فاز در نظر گرفته می‌شه. اگه ساختمون آسانسور نداشته باشه، تابلوی اشتراکی هم تک فازه.\n'
                        'برای تغدیه برق قسمت‌های مشاع ساختمون مثل راه‌پله، پارکینگ، پشت بوم و حیاط، تابلو مشاعات در نظر گرفته می‌شه. تابلو مشاعات جایی نصب می‌شه که همه ساکنین ساختمون بهش دسترسی داشته باشن، مثلا توی پارکینگ یا پیلوت. سیستم‌های آنتن مرکزی، آیفون، اعلام حریق و موتورخونه از همین تابلو تغذیه می‌شن.\n'
                        'تابلوی توزیع برق واحدها که بهشون تابلوی مینیاتوری هم گفته می‌شه، وظیفه‌ی رسوندن برق به مدارهای روشنایی و پریزهای هر واحد مسکونی رو به‌عهده دارن. توی تابلوهای مینیاتوری مسیر خروجی برای روشنایی، پریزهای برق وکولر گازی یا اسپلیت به‌صورت جداگانه در نظر گرفته می‌شه و کلید مینیاتوری درنظر گرفته شده برای هرکدوم هم جداست و کلاس جریانی متفاوتی داره. توی تابلوی مینیاتوری چند خط رو هم به‌عنوان ذخیره یا رزرو درنظر می‌گیرن که اگه خطوط دیگه دچار مشکل شدن یا تغییر خاصی توی ساختمون رخ داد بشه از این خط‌ها استفاده کرد.',
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
                              'بسپارش به ما برای برق صنعتی و تابلو برق ساختمان چه خدماتی ارائه می‌کنه؟',
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
