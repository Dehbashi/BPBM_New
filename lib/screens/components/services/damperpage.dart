import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'امکانش هست قبل از نصب، آرام بند رو کارشناس بسپارش به ما تهیه کنه؟',
    answer:
        'بله، کارشناس می‌تونه با هماهنگی شما، آرام‌بند مدنظر رو هم خریداری کنه و با خودش به محل بیاره.',
  ),
  FAQItem(
    question: 'کارشناس های بسپارش به ما آرام بندهای قدیمی رو هم تعمیر می کنن؟',
    answer:
        'بله، کارشناس‌های بسپارش به ما کار تعمیر آرام‌بندهای قدیمی رو هم انجام می‌دن.',
  ),
  FAQItem(
    question: 'تأمین وسایل جانبی مورد نیاز برای خدمات آرام بند با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات آرام بند توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات آرام بند بسپارش به ما استفاده کنم؟',
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

class DamperPage extends StatefulWidget {
  @override
  State<DamperPage> createState() => _DamperPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'نصب انواع آرام‌بند',
  Image.asset('assets/icons/antennaicons/help.png'):
      'تنظیم و سرویس انواع آرام‌بند',
};

class _DamperPageState extends State<DamperPage> {
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
                          'آشنایی با سرویس نصب آرام بند',
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
                      'assets/images/services/damper.png',
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
                        'نصب و تعمیر آرام‌بند درب رو بسپارش به ما\n'
                        'می‌خوای برای در ورودی ساختمون خونه یا محل کارت آرام‌بند نصب کنی؟ صفر تا صد کار رو بسپارش به ما.\n'
                        'آرام بند پارکینگ یا ساختمونت نیاز به تعمیر یا تعویض داره؟ کارشناس‌های بسپارش به ما عیب‌یابی و تعمیر رو برات انجام می‌ده.',
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
                              'آرام‌بند چیه و چطوری کار می‌کنه؟',
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
                        'حتی اگه اسم آرام‌بند رو نشنیده باشین، حتما باهاش برخورد داشتین. آرام‌بند یه بازوی هیدرولیکی یا مکانیکیه که پشت درها نصب می‌شه و بعد از باز شدن در، اون رو به صورت اتومات و خیلی آروم می‌بنده. بسته شدن در بعد از باز کردن اون برای خیلی از مکان‌ها ضروریه و باعث می‌شه از ورود ناخواسته حیوانات یا اجسام سرگردان و همین‌طور ورود و خروج هوای سرد یا گرم به داخل یا بیرون محیط جلوگیری بشه. بعلاوه، اینکه در محکم بسته نشه و سروصدای مداوم تولید نکنه هم مهمه که آرام‌بند این ویژگی رو هم تأمین می‌کنه.\n'
                        'آرام‌بندها رو می‌شه به دو صورت آشکار و پنهان نصب کرد. آرام‌بند اجزای مختلفی داره شامل: پیچ تنظیم، بازو، پاشنه یا کفشک بازویی و ساعد بازویی. با پیچ تنظیم، سرعت بسته شدن در تعیین می‌شه. پاشنه یکی از اجزای اصلی آرام‌بنده که باز و بسته شدن در رو به عهده داره و وزن در رو تحمل می‌کنه. داخل پاشنه دوتا فنر تعبیه شده که به یک پیستون شیاردار وصلن و کنترل این پیستون رو هم یه چرخ‌دنده‌ی عمودی به عهده داره. بازوی اصلی درواقع مرکز ثقل چرخش فنره و کار باز و بسته کردن در رو انجام می‌ده، یعنی تنظیماتی که روی پیچ تنظیم اعمال شده، از طریق بازو روی در اعمال می‌شه. در نهایت هم ساعد بازویی اون بخشیه که آرام‌بند رو به چارچوب وصل می‌کنه و موقع باز و بسته شدن سریع در، جلوی برخورد شدید در با چارچوب رو می‌گیره تا به اجزای آرام بند و در آسیبی وارد نشه.\n'
                        'حالا بد نیست یه کم در مورد نحوه‌ی کار آرام‌بند هم توضیح بدیم. همون‌طور که گفتیم داخل آرام‌بندها یه پیستونی تعبیه شده که به فنر آرام‌بند متصله و با باز شدن در، پیستون حرکت می‌کنه و فنر رو فشرده می‌کنه. وقتی در رها می‌شه، انرژی ذخیره شده‌ی توی پیستون به فنر برمی‌گرده. این جریان انرژی به عملکرد آرام‌بند و کنترل سرعتش کمک می‌کنه.\n'
                        'آرام‌بند انواع مختلفی داره که برای انتخاب بینشون، باید به کاربرد و نوع در توجه کرد. آرام‌بند سبک برای استفاده روی درهای معمولی و سبک بهترین گزینه‌ست و می‌شه اون رو برای خونه‌ها که کم رفت‌و‌آمدتر هستن استفاده کرد. آرام‌بند سنگین برای درهای نسبتا بزرگ‌تر و جاهایی که پررفت‌وآمدتر هستن استفاده می‌شه. آرام‌بند سنگین می‌تونه درهای بزرگ رو خیلی خوب کنترل کنه و از بسته شدن یهویی و شدید اون‌ها جلوگیری کنه. آرام‌بند دوزمانه، همون‌طور که از اسمش پیداست با دو حرکت کوتاه، در رو متوقف می‌کنه و می‌بنده، یعنی در توی دوتا زاویه‌ی مختلف توقف می‌کنه و سرعت در اینطوری کنترل می‌شه.',
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
                              'بسپارش به ما برای آرام‌بند چه خدماتی ارائه می‌کنه؟',
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
