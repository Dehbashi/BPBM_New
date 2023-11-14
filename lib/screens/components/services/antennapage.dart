import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'می خوام برای خونم آنتن نصب کنم، از کجا بدونم چه نوع آنتنی برام مناسبه؟',
    answer:
        'قبل از نصب آنتن و برای بررسی شرایط محل، کارشناس‌های بسپارش به ما در محل حاضر می‌شن و بهتون مشاوره می‌دن که بهتره چه نوع آنتنی نصب بشه. کافیه از بخش خدمات، گزینه‌ی مشاوره برای نصب آنتن رو انتخاب کنین.',
  ),
  FAQItem(
    question:
        'اگه برای نصب آنتن نیاز به نصب پایه هم باشه، بسپارش به ما برام انجام می ده؟',
    answer:
        'ما همیشه سعی می‌کنیم علاوه‌بر بهترین راهکار، سریع‌ترین راهکار رو ارائه بدیم و اجرا کنیم تا کار شما هم در سریع‌ترین زمان ممکن انجام بشه. در صورتی که کارشناس در محل تشخیص بده که نیاز به نصب پایه برای آنتن هست، این کار رو هم براتون انجام می‌ده.',
  ),
  FAQItem(
    question:
        'تهیه کابل برای کابل کشی آنتن به عهده خودمه یا کارشناس بسپارش به ما برام انجام میده؟',
    answer:
        'قبل از ثبت سفارش، با سوالاتی که ازتون می‌پرسیم، به صورت حدودی متراژ کابل مورد نیاز برای سیم‌کشی رو متوجه می‌شیم تا کارشناس برای انجام کار از قبل تهیه کنه. اگه موقع ثبت سفارش حس کردین که توی جواب دادن به سوال‌ها مشکل دارین و نمی‌تونین متراژ کابل مورد نیاز رو حتی به صورت حدودی درست وارد کنین، نگران نباشین. کافیه با پشتیبانی ما تماس بگیرین تا با سوال‌هایی که ازتون می‌پرسن راهنمایی‌تون کنن.',
  ),
  FAQItem(
    question:
        'همراه با نصب آنتن می تونم درخواست نصب و راه اندازی ستاپ باکس هم بدم؟',
    answer:
        'بله. موقع ثبت سفارش توی خدمات مدنظرتون گزینه نصب ستاپ باکس رو هم وارد کنین تا کارشناس علاوه‌بر نصب آنتن، کار نصب و راه‌اندازی گیرنده دیجیتال رو هم براتون انجام بده.',
  ),
  FAQItem(
    question:
        'نمی دونم چه مدل یا برند ستاپ باکسی تهیه کنم، امکانش هست که قبل نصب خود کارشناس برام تهیه کنه؟',
    answer:
        'بله، کارشناس پیش از حضور در محل امکان این رو داره که خودش ستاپ باکس رو براتون تهیه کنه. اما از اونجایی که ستاپ باکس‌ها امکانات مختلفی ارائه می‌کنن، باید حتما امکانات مدنظرتون رو به کارشناس بگین تا بتونه بهترین مدل رو براتون انتخاب کنه. حین خرید، کارشناس با شما در تماسه و با سوال‌هایی که ازتون می‌پرسه، بهترین و با کیفیت‌ترین مدل رو براتون خریداری می‌کنه.',
  ),
  FAQItem(
    question:
        'تأمین وسایل مورد نیاز برای نصب، تنظیم یا تعمیر آنتن و ستاپ باکس با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای نصب، تنظیم یا تعمیر آنتن و ستاپ باکس توی بسپارش به ما درخواست بدم؟',
    answer:
        'از اونجایی که درخواست خدمات رو به صورت آنلاین ثبت می‌کنین، بنابراین هرموقعی که برای نصب، تنظیم یا تعمیر آنتن و ستاپ باکس نیاز به متخصص داشتین می‌تونین توی بسپارش به ما درخواست بدین. هرزمان که کارشناس‌ها در دسترس باشن، بهترین کارشناس رو برای انجام کار به محل شما می‌فرستیم.',
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
        'توی کدوم مناطق می تونم از خدمات آنتن و ستاپ باکس بسپارش به ما استفاده کنم؟',
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

class AntennaPage extends StatefulWidget {
  @override
  State<AntennaPage> createState() => _AntennaPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'عیب‌یابی و رفع مشکل سیم‌کشی آنتن',
  Image.asset('assets/icons/antennaicons/help.png'):
      'مشاوره، نصب و تنظیم انواع آنتن تلویزیون',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'نصب و تنظیم انواع ستاپ باکس (گیرنده دیجیتال)',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'نصب آنتن مرکزی ساختمان',
  Image.asset('assets/icons/antennaicons/amplifier.png'):
      'تقویت‌کننده آنتن تلویزیون',
  Image.asset('assets/icons/antennaicons/noisecanceler.png'):
      'رفع نویز و ایراد تصویر در تلویزیون',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'سیم‌کشی آنتن به صورت روکار یا توکار',
};

class _AntennaPageState extends State<AntennaPage> {
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
                          'آشنایی با سرویس آنتن',
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
                      'assets/images/services/antenna.png',
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                      height: 225,
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
                        'نصب، تنظیم و تعمیر انواع آنتن تلویزیون و ستاپ باکس رو بسپارش به ما\n'
                        'اگه می‌خوای برای مجتمع مسکونی یا محل کارت آنتن نصب کنی، با خیال راحت صفر تا صدش رو بسپارش به ما.\n'
                        'کانال‌های تلویزیون خونه‌ت به هم ریخته و نمی‌دونی چطوری باید تنظیمشون کنی؟ نگران نباش، بسپارش به ما.\n'
                        'آنتن دیجیتال داری ولی همه‌ش بهت پیغام قطع سیگنال می‌ده؟ بسپارش به ما کنارته تا برات درستش کنه.\n'
                        'با کارشناس‌های حرفه‌ای بسپارش به ما، دیگه نگرانی بابت نصب، تنظیم یا تعمیر آنتن مرکزی و دیجیتال خونه و محل کارت نداری. کافیه خبرمون کنی تا بهترین خدمات رو بهت ارائه بدیم.',
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
                          'آنتن‌های تلویزیون چه انواعی دارن و چطوری کار می‌کنن؟',
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
                        'احتمالا شما هم تا حالا آنتن‌های مختلفی بالای خونه‌ها به چشمتون خورده و از خودتون پرسیدین اصلا چرا این همه آنتن مختلف داریم؟ با اینکه توی نگاه اول، آنتن ابزار خیلی ساده‌ای به نظر می‌رسه که حتی طراحیش هم به ظاهر پیچیدگی خاصی نداره اما عملکردش اونقدرها هم ساده نیست. کار آنتن اینه که سیگنال صدا و تصویر رو که به صورت الکترومغناطیسی و از طریق هوا توسط فرستنده فرستاده شده، دریافت و تقویت کنه و بعد از اینکه اون رو به سیگنال الکتریکی تبدیل کرد، به یه دستگاه مبدل یا مستقیما به تلویزیون شما تحویل بده.\n'
                        'نوع آنتن باید با توجه به شرایط محل نصب، قدرت سیگنال مخابره شده، باند فرکانسی و طول موج سیگنال دریافتی و شرایط دیگه تعیین بشه. بررسی این شرایط هم از عهده‌ی کارشناس متخصص برمیاد و اونه که می‌تونه مشاوره‌ی لازم برای انتخاب آنتن مناسب رو ارائه کنه. حالا که دلیل وجود این همه آنتن جورواجور رو دونستیم، بد نیست با چند نوع آنتن که استفاده ازشون رایج‌تره آشنا بشیم: آنتن‌های مونوپل یا تک‌ قطبی، آنتن دو قطبی یا دو شاخه، آنتن هورن یا شیپوری، آنتن بشقابی، آنتن شاخه‌ای و آنتن رومیزی.\n'
                        'خیلی‌ها که توی مجتمع‌های بزرگ با تعداد واحد زیاد زندگی می‌کنن، احتمالا با آنتن مرکزی هم آشنایی دارن. آنتن مرکزی همون‌طور که از اسمش هم مشخصه، وظیفه‌ی دریافت سیگنال صوت و تصویر برای تمام واحدهای یه مجتمع رو به‌عهده داره. یعنی به جای اینکه هرواحد برای خودش یه آنتن جدا نصب کنه و پشت بوم و بالکن واحدها پر کابل و آنتن بشه و زیبایی ساختمون رو کلا از بین ببره، یه آنتن برای کل مجتمع در نظر گرفته می‌شه که می‌تونه به همه‌ی واحدها خروجی بده.\n'
                        'قدیم‌ترها، صدا و تصویر به صورت آنالوگ مخابره می‌شد و برای همین، داشتن یه آنتن و یه تلویزیون برای گرفتن تصویر و صدا کافی بود. اما بعدا با پیشرفت تکنولوژی، فهمیدن که اگه سیگنال صدا و تصویر رو به صورت دیجیتال مخابره کنن هم خطای کمتری توی ارسال و دریافتش به‌وجود میاد و هم بازیابی کردنش توی گیرنده راحت‌تر می‌شه. اینجا بود که دستگاه‌هایی به اسم ستاپ باکس یا گیرنده دیجیتال به‌وجود اومدن تا کار دریافت و تبدیل سیگنال دیجیتال به صدا و تصویر رو انجام بدن.\n'
                        'این روزها همه‌ی ما برای دیدن شبکه‌های دیجیتال، یه ستاپ باکس توی خونه‌هامون داریم که از آنتن ورودی رو می‌گیره و خروجی رو خیلی تمیز و با کیفیت، روی تلویزیون نمایش می‌ده. البته درست کار کردنش مشروط به اینه که هم آنتن درست تنظیم شده باشه و هم کابل‌کشی آنتن اصولی انجام شده باشه.\n'
                        'شما برای نصب، تنظیم یا تعمیر هر نوع آنتنی که توی خونه یا محل کارتون ازش استفاده می‌کنین، یا برای نصب، تنظیم و تعمیر ستاپ باکس، می‌تونین با بسپارش به ما تماس بگیرین.\n'
                        'کارشناس‌های ما تمام شرایط رو بررسی می‌کنن و بهترین انتخاب رو به شما پیشنهاد می‌دن و براتون اجرا می‌کنن.',
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
                        Text(
                          'بسپارش به ما برای آنتن چه خدماتی ارائه می‌ده؟',
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
                                    width: 300,
                                    height: 30,
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
