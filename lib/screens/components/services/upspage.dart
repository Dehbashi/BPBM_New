import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'برای طراحی و اجرای سیستم برق اضطراری، می تونم از کارشناس های بسپارش به ما مشاوره بگیرم؟',
    answer:
        'بله. کارشناس‌های بسپارش به ما می‌تونن با بررسی شرایط و معیارهای مدنظر شما، برای اجرای سیستم برق اضطراری بهتون مشاوره بدن.',
  ),
  FAQItem(
    question:
        'می تونم برای خرید UPS از راهنمایی کارشناس های بسپارش به ما استفاده کنم؟',
    answer:
        'بله کارشناس می‌تونه بعد از هماهنگی با شما و مشخص شدن ادوات مورد نیاز، خودش اون‌ها رو تهیه کنه و به محل بیاره.',
  ),
  FAQItem(
    question:
        'امکانش هست UPS یا موتور یا ژنراتور سیستم برق اضطراری را کارشناس بسپارش به ما تهیه کنه؟',
    answer:
        'بله، کارشناس بسپارش به ما می‌تونه با هماهنگی و تأیید خودتون و بعد از مشخص شدن مشخصات سیستم برق اضطراری مدنظر، این کار رو انجام بده.',
  ),
  FAQItem(
    question:
        'تأمین وسایل جانبی مورد نیاز برای اجرا یا تعمیر سیستم برق اضطراری با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات برق اضطراری توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات برق اضطراری بسپارش به ما استفاده کنم؟',
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

class UpsPage extends StatefulWidget {
  @override
  State<UpsPage> createState() => _UpsPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'مشاوره برای طراحی و اجرای انواع سیستم‌های برق اضطراری',
  Image.asset('assets/icons/antennaicons/help.png'): 'نصب ژنراتور برق اضطراری',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'نصب و راه اندازی موتور برق',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'اجرای برق اضطراری ساختمان با UPS',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'اجرای سیستم برق اضطراری خانگی، صنعتی و اداری',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'تعمیرات انواع دستگاه برق اضطراری',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'تعمیر قطعات سیستم‌های برق اضطراری',
  Image.asset('assets/icons/antennaicons/setupcenter.png'): 'تعویض باتری UPS',
};

class _UpsPageState extends State<UpsPage> {
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
                          'UPS آشنایی با سرویس',
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
                      'assets/images/services/ups.png',
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
                        'خدمات برق اضطراری ساختمان رو بسپارش به ما\n'
                        'برای ساختمون محل کارت نیاز به طراحی و اجرای سیستم برق اضطراری داری؟ بسپارش به ما همه‌ی کارها رو برات انجام می‌ده.\n'
                        'سیستم برق اضطراری خونه یا محل کارت دچار مشکل شده و درست کار نمی‌کنه؟ کار عیب‌یابی و تعمیر رو بسپارش به ما.',
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
                              'برق اضطراری چه انواعی داره و چطوری کار می‌کنه؟',
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
                        'تقریبا تمام وسایل و تجهیزاتی که توی زندگی روزمره و محل کارمون ازشون استفاده می‌کنیم به برق وابسته هستن و نبود برق باعث اختلال توی زندگی و کار همه‌مون می‌شه. توی محل‌هایی مثل بیمارستان‌ها، برق نقش حیاتی پیدا می‌کنه و اگه برق قطع بشه تجهیزاتی که باعث حفظ جون آدم‌ها می‌شن، از کار می‌افتن. برای جلوگیری از ضررها و آسیب‌های زیادی که قطعی برق می‌تونه به زندگی، کار و جون آدم‌ها وارد کنه، سیستم‌های برق اضطراری به‌وجود اومدن و این‌روزها وجودشون توی خیلی از مکان‌ها ضروریه.\n'
                        'برق اضطراری به مجموعه‌ای از تجهیزات، دستگاه‌ها و سیستم‌های سخت‌افزاری یا نرم‌افزاری گفته می‌شه که توی شرایط قطعی یا نوسانات شدید برق، به‌عنوان یه‌جور سیستم پشتیبان برای برق شهری، وارد مدار می‌شه تا برق رو تأمین کنه. منابع تغذیه‌کننده‌ی برق اضطراری می‌تونن به‌صورت ذخیره‌کننده یا مولد باشن، یعنی برق رو از قبل ذخیره کرده باشن و زمان قطعی تحویل بدن، یا اینکه موقع قطعی، برق رو خودشون تولید کنن. مثلا UPS یه نوع منبع ذخیره‌کننده به حساب می‌آد اما ژنراتور یه‌جور منبع مولده.\n'
                        'سیستم برق اضطراری رو می‌شه با ادوات مختلفی اجرا کرد. برای محل‌هایی که نیاز به توان مصرفی کمتری دارن یا به‌عبارتی تعداد وسایل‌شون کمه و مصرف چندانی هم ندارن، می‌شه برق اضطراری رو با ژنراتور قابل حمل پیاده‌سازی کرد. وقتی مصرف بیشتر باشه یعنی مثل یه خونه که وسایل برقی مختلفی داره، ژنراتور خانگی یکی از گزینه‌های مناسبه. زمانی که برق می‌ره، ژنراتور خانگی به‌صورت خودکار روشن می‌شه و برق خونه رو تأمین می‌کنه.\n'
                        'گزینه‌ی دیگه‌ای که می‌شه برای برق اضطراری بهش فکر کرد، پنل‌های خورشیدی هستن که توی خودشون باتری هم دارن. این سیستم توی شهرها و محل‌هایی که آب‌وهوای آفتابی دارن خیلی کاربرد داره. پنل‌های خورشیدی به‌کار رفته توی این سیستم‌ها از نوع فتوولتائیک (PV) هستن؛ یعنی نور خورشید رو جذب می‌کنن و به کمک اینورتر، انرژی خورشیدی رو به برق قابل استفاده تبدیل می‌کنن. برای اینکه بشه برق تولید شده به‌وسیله‌ی پنل خورشیدی رو ذخیره کرد، باید حتما از باتری در کنارش استفاده بشه. زمان قطعی و نوسانات برق، انرژی ذخیره شده توی باتری‌ها به‌عنوان برق اضطراری مورد استفاده قرار می‌گیره.\n'
                        'اما متداول‌ترین روش برای اجرای برق اضطراری، UPS هست که بهش منبع تغذیه بدون وقفه هم می‌گن. UPS یه نوع باتریه که با توجه به ظرفیتش می‌تونه برای دستگاه‌هایی که با برق AC کار می‌کنن مناسب باشه. در حال حاضر توی خیلی از محیط‌های اداری، بیمارستان‌ها، دیتاسنترها و مراکز آموزشی از UPS برای تأمین برق اضطراری استفاده می‌شه.\n'
                        'برای پیاده‌سازی درست و اصولی برق اضطراری باید به نکات مختلفی توجه داشت. مثلا حتما باید توان مصرفی و تعداد دستگاه‌هایی که قراره به برق اضطراری وصل بشن، با دقت مورد توجه قرار بگیره و محاسبه بشه. برای همینه که برای طراحی و اجرای سیستم برق اضطراری باید حتما با کارشناس خبره مشورت بشه تا تمام مراحل، به روش درست و بهینه پیاده‌سازی و اجرا بشن.',
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
                              'بسپارش به ما برای برق اضطراری چه خدماتی ارائه می‌کنه؟',
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
