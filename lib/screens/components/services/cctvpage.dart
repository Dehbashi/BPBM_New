import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:url_launcher/url_launcher.dart';

List<Faq> faqs = [
  Faq(
    question:
        'برای نصب و راه اندازی سیستم دوربین مداربسته از کجا بفهمم بهتره از چه نوع دوربین و جانمایی استفاده کنم؟',
    answer:
        'با انتخاب گزینه مشاوره توی خدمات دوربین مداربسته بسپارش به ما، کارشناس‌هامون در محل حاضر می‌شن و در مورد جانمایی دوربین‌ها، سیم‌کشی و اتصالات بهتون مشاوره می‌دن. بعدش هم براساس نیاز شما و اولویت‌هاتون، بهترین گزینه‌ها رو بهتون پیشنهاد می‌دن.',
  ),
  Faq(
    question:
        'دوربین های مدار بسته و سایر تجهیزاتی که برای نصب و راه اندازی یا سرویس و تعمیر نیازه رو باید خودم تهیه کنم؟',
    answer:
        'برای سرویس و تعمیر، هر تجهیزاتی که نیاز باشه خود کارشناس تهیه می‌کنه و همراهش میاره. در نهایت هم اگه چیزی کم‌وکسر بود با هماهنگی شما و بخش پشتیبانی بسپارش به ما، برای تهیه‌ش اقدام می‌کنه. در مورد دوربین هم کارشناس‌های بسپارش به ما این امکان رو دارن که با هماهنگی قبلی و گرفتن تأیید از خودتون، دوربین رو تهیه کنن و با خودشون بیارن.',
  ),
  Faq(
    question:
        'بعد از نصب و راه اندازی سرویس دوربین مدار بسته، می تونم تصویر دوربین ها رو روی گوشیم داشته باشم؟',
    answer:
        'بله، کافیه موقع ثبت درخواستتون توی بسپارش به ما، این سرویس رو انتخاب کنین. کارشناس‌های ما کار اتصال و راه‌اندازی برنامه‌های مورد نیاز برای نمایش تصویر دوربین‌ها روی گوشی‌تون رو هم براتون انجام می‌دن.',
  ),
  Faq(
    question:
        'اگه بخوام آرشیو ویدیوها رو از روی DVR بازبینی کنم، می تونم از کمک کارشناس های بسپارش به ما استفاده کنم؟',
    answer:
        'بله کارشناس‌های ما برای بازبینی تصاویر دوربین‌ها از روی DVR بهتون کمک می‌کنن.',
  ),
  Faq(
    question:
        'چه زمان هایی می تونم برای نصب، راه اندازی و تعمیر دوربین مدار بسته توی بسپارش به ما درخواست بدم؟',
    answer:
        'از اونجایی که درخواست خدمات رو به صورت آنلاین ثبت می‌کنین، بنابراین هرموقعی که برای نصب، راه‌اندازی و تعمیر دوربین مداربسته نیاز به متخصص داشتین می‌تونین توی بسپارش به ما درخواست بدین. هرزمان که کارشناس‌ها در دسترس باشن، بهترین کارشناس رو برای انجام کار به محل شما می‌فرستیم.',
  ),

  Faq(
    question: 'بسپارش به ما برای خدمات و تجهیزات ضمانت می ده؟',
    answer:
        'بله، تمام خدمات و تجهیزات شامل گارانتی و ضمانت بسپارش به ما می‌شه. ما حتی در مورد تعهد اخلاقی و رفتار کارشناس‌ها هم به شما ضمانت می‌دیم تا توی اون زمانی که مهمون خونه یا محل کارتون هستیم، خاطره‌ی خوبی از ارائه‌ی خدمات براتون ثبت کنیم.',
  ),
  Faq(
    question: 'می تونم برای هزینه خدمات فاکتور هم بگیرم؟',
    answer:
        'بله اگه نیاز به فاکتور داشته باشین، بسپارش به ما برای وسایل و اقلام به کار برده شده، بهتون فاکتور می‌ده.',
  ),
  Faq(
    question:
        'توی کدوم از مناطق می تونم از خدمات دوربین مداربسته بسپارش به ما استفاده کنم؟',
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

class CctvPage extends StatefulWidget {
  @override
  State<CctvPage> createState() => _CctvPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'مشاوره برای نصب و جانمایی انواع دوربین مداربسته',
  Image.asset('assets/icons/antennaicons/help.png'):
      'نصب و راه‌اندازی انواع دوربین مداربسته در ساختمان‌ها',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'جانمایی دوربین، کابل کشی، داکت‌کشی، نصب اتصالات و تنظیم های نرم افزاری انواع دوربین مداربسته',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'نصب دوربین مداربسته مخفی',
  Image.asset('assets/icons/antennaicons/amplifier.png'):
      'سرویس و تعمیر انواع دوربین‌های مداربسته',
  Image.asset('assets/icons/antennaicons/noisecanceler.png'):
      'عیب یابی و رفع نویز انواع دوربین‌های مداربسته',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'عیب‌یابی و تعمیر دستگاه‌های DVR و NVR برای دوربین‌های مداربسته آنالوگ و تحت شبکه',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'نصب برنامه کنترل دوربین از طریق گوشی هوشمند',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'نصب برنامه کنترل دوربین از خانه',
};

class _CctvPageState extends State<CctvPage> {
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
                          'آشنایی با سرویس دوربین مدار بسته',
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
                      'assets/images/services/cctv.png',
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
                        'نصب، راه‌اندازی و تعمیر دوربین مداربسته رو بسپارش به ما\n'
                        'برای تأمین امنیت خونه یا محل کارت نیاز به نصب و راه‌اندازی دوربین مداربسته داری؟ همه‌ی کارها رو بسپارش به ما.\n'
                        'سیستم دوربین مداربسته نیاز به جابه‌جایی و تغییر سیم‌کشی داره؟ بسپارش به ما کل کارها رو برات انجام می‌ده.\n'
                        'اگه سیستم دوربین مداربسته درست کار نمی‌کنه و نیاز به تعمیر یا تعویض داره، می‌تونی روی بسپارش به ما حساب کنی.\n'
                        'هر نوع خدماتی که برای دوربین مداربسته بخوای، کارشناس‌های بسپارش به ما آماده هستن تا کارت رو به بهترین و باکیفیت‌ترین شکل انجام بدن.',
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
                          'دوربین مداربسته چه انواعی داره و چطور کار می‌کنه؟',
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
                        'به‌صورت کلی دوربین‌های مداربسته رو می‌تونیم به دو دسته‌ی دوربین‌های آنالوگ و دوربین‌های دیجیتال یا تحت شبکه تقسیم کنیم. تفاوت اصلی دوربین‌های مداربسته آنالوگ و دیجیتال، به بستری که برای انتقال تصویر و اطلاعات ازش استفاده می‌کنن برمی‌گرده. مثلا اینکه اطلاعات در مقصد چطور دریافت می‌شن یا سرعت انتقالشون چقدره، توی دوربین‌های آنالوگ و دیجیتال با هم متفاوته.\n'
                        'توی دوربین آنالوگ، سیگنال از طریق کابل کواکسیال به دستگاه DVR منتقل می‌شه. دستگاه DVR هم کارش اینه که تصاویر دوربین مداربسته رو ضبط کنه و به‌خاطر مشخصه‌های مختلفی که داره، بسته به کاربرد و استفاده، باید توی انتخابش با یه کارشناس زبده مشورت بشه. DVR-ها یه مشخصه‌ای به‌نام تعداد کانال دارن که ارتباط مستقیمی با تعداد دوربین‌های موجود توی سیستم داره. مثلا اگه بین یک تا چهار دوربین توی سیستم وجود داره، باید از دی‌وی‌آر چهار کانالی استفاده بشه. شاید بد نباشه بدونین که خود DVR فضایی برای ذخیره کردن اطلاعات نداره و باید یه هارد خارجی هم همراهش درنظر گرفت که دیتا توش ذخیره بشه.\n'
                        ' دوربین‌های آنالوگ انواع مختلفی دارن و می‌شه گفت بهترین و متداول‌ترین نوعشون دوربین‌های HD-TVI هستن که کیفیت تصویربرداری خیلی بالاتری رو نسبت به دوربین‌های آنالوگ قدیمی ارائه می‌کنن. توی دوربین‌های HD-TVI، سیگنال تصویر قبل از منتقل شدن به DVR، با کمک یک تراشه کد یا رمزگذاری می‌شه و بعد به دستگاه DVR ارسال و همونجا دیکد یا رمزگشایی می‌شه. دوربین‌های HD-CVI، دوربین‌های AHD و دوربین‌های HD-SDI از انواع دیگه‌ی دوربین‌های مداربسته‌ی آنالوگ هستن که هرکدوم توی نحوه‌ی کارشون تفاوت‌هایی با هم دارن.\n'
                        'بریم سراغ دوربین‌های دیجیتال یا تحت شبکه (IP). دوربین شبکه بعد از ثبت تصاویر، فایل‌ها رو از طریق حسگر به اطلاعات دیجیتال تبدیل می‌کنه. بعد از دیجیتال شدن اطلاعات، نوبت دستگاه NVR هست که ویدیوها رو ضبط کنه. همون‌طور که از اسم NVR هم مشخصه، نقش DVR رو برای دوربین‌های تحت شبکه بازی می‌کنه. درواقع با NVR می‌شه ویدیوها رو ذخیره کرد تا بشه بعدا هم بهشون دسترسی داشت.\n'
                        'بسته به نوع کاربرد شما، کارشناس‌های بسپارش به ما بهتون مشاوره می‌دن که بهتره کدوم یکی از انواع دوربین‌های مداربسته رو انتخاب کنین و در مورد جانمایی هم بهتون مشاوره می‌دن. بعد از مشاوره نوبت به اجرا می‌رسه و کارشناس‌های بسپارش به ما کار رو با بهترین کیفیت بهتون تحویل می‌دن.',
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
                  Container(
                    padding: EdgeInsets.only(
                      left: questionboxpadding,
                      right: questionboxpadding,
                    ),
                    // height: MediaQuery.of(context).size.height * 0.8,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor:
                              Colors.transparent, // Remove the gray line border
                        ),
                        child: Column(
                          children: [
                            ...faqs.map((faq) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDEEF0),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                        questionboxborderradius),
                                    topLeft: Radius.circular(
                                        questionboxborderradius),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.5), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset: Offset(0,
                                          3), // Offset in the x and y direction
                                    ),
                                  ],
                                ),
                                child: ExpansionTile(
                                  title: Container(
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      faq.question,
                                      style: TextStyle(
                                        color: Color(0xFF025459),
                                        fontFamily: 'iransans',
                                        fontSize: textsize,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 15),
                                        child: Text(
                                          faq.answer,
                                          style: TextStyle(
                                            color: Color(0xFF025459),
                                            fontFamily: 'iransans',
                                            fontSize: textsize,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ],
                        ),
                      ),
                    ),
                  ),
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
                              'بسپارش به ما برای دوربین مداربسته چه خدماتی ارائه می‌ده؟',
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
