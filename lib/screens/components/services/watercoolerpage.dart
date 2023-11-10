import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:url_launcher/url_launcher.dart';

List<Faq> faqs = [
  Faq(
    question:
        'وسایل مورد نیاز برای نصب، تعمیر یا سرویس کولر رو باید خودم تهیه کنم؟',
    answer:
        'نه شما لازم نیست هیچ وسیله‌ای رو خودتون تهیه کنین. کارشناس ما تمام وسایل مورد نیاز رو همراه خودش میاره و اگر هم حین کار نیاز به قطعه یا تجهیزی داشته باشه، خودش تهیه می‌کنه.',
  ),
  Faq(
    question:
        'چه زمان هایی می تونم برای  نصب، تعمیر یا سرویس کولر آبی توی سایت یا اپلیکیشن بسپارش به ما درخواست بدم؟',
    answer:
        'از اونجایی که ثبت سفارش برای دریافت خدمات به صورت آنلاین انجام می‌شه، بنابراین شما می‌تونین هر روز و هر ساعتی که نیاز به خدمات دارین، سفارشتون رو توی بسپارش به ما ثبت کنین. ما در اسرع وقت بهترین کارشناس رو برای انجام کارتون اعزام می‌کنیم.',
  ),
  Faq(
    question: 'بسپارش به ما برای خدمات و تجهیزات ضمانت میده؟',
    answer:
        'بله، تمام خدمات و تجهیزات شامل گارانتی و ضمانت بسپارش به ما می‌شه تا حتی بعد از انجام کار هم خیالتون بابت کیفیت خدمات راحت باشه. کارشناس‌های ما علاوه‌بر حرفه‌ای بودن، بااخلاق و متعهد هم هستن.',
  ),
  Faq(
    question: 'می تونم برای هزینه خدمات فاکتور هم بگیرم؟',
    answer:
        'بله اگه نیاز به فاکتور داشته باشین، بسپارش به ما برای وسایل و اقلام به کار برده شده، بهتون فاکتور می‌ده.',
  ),
  Faq(
    question:
        'توی کدوم مناطق می تونم از خدمات نصب، سرویس یا تعمیر کولر آبی بسپارش به ما استفاده کنم؟',
    answer:
        'بسپارش به ما خدماتش رو توی ۲۲ منطقه‌ی تهران ارائه می‌کنه، بنابراین هرکجای این شهر شلوغ که باشین، متخصصین بسپارش به ما با سرعت نور خودشون رو به محل شما می‌رسونن.',
  ),
  Faq(
    question: 'قبل از ثبت درخواست از کجا بفهمیم مشکل کولر آبی چیه؟',
    answer:
        'یکی از خوبی‌های بسپارش به ما اینه که هم پشتیبانی خیلی پیگیری داره و هم نیروهای متخصص‌اش برای مشاوره به شما آماده‌ان. قبل ثبت سفارش هر سوالی که داشته باشین، می‌تونین با ما تماس بگیرین تا پشتیبانی یا کارشناس‌هامون راهنماییتون کنن.',
  ),
  // Add more FAQs as needed
];

class Faq {
  final String question;
  final String answer;

  Faq({required this.question, required this.answer});
}

class WaterCoolerPage extends StatefulWidget {
  @override
  State<WaterCoolerPage> createState() => _WaterCoolerPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'): 'نصب کولر',
  Image.asset('assets/icons/antennaicons/help.png'):
      'چک کردن برق‌کشی کولر و پمپ کولر',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'چک کردن فن و تسمه کولر',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'روغن کاری دینام کولر آبی',
  Image.asset('assets/icons/antennaicons/amplifier.png'):
      'روغن‌کاری یاتاقان‌ها',
  Image.asset('assets/icons/antennaicons/noisecanceler.png'):
      'سرویس و تعمیر موتور کولر (سیم‌پیچی کولر)',
  Image.asset('assets/icons/antennaicons/wiring.png'): 'تعویض تسمه',
  Image.asset('assets/icons/antennaicons/wiring.png'): 'تعویض پمپ',
  Image.asset('assets/icons/antennaicons/wiring.png'): 'تعویض پوشال',
  Image.asset('assets/icons/antennaicons/wiring.png'): 'شست‌وشوی کف کولر',
};

class _WaterCoolerPageState extends State<WaterCoolerPage> {
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
                          'آشنایی با سرویس کولر آبی',
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
                      'assets/images/services/watercooler.png',
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
                        'برای اینکه با خیال راحت به پیشواز فصل‌های گرم سال بری و بهار و تابستون خنک و دلچسبی داشته باشی، نصب یا تعمیر و سرویس کولر آبی خونه و محل کارت رو بسپارش به ما.\n'
                        'اگه کولر آبی نداری و دنبال متخصصی می‌گردی که صفر تا صد نصب کولر رو بدون دردسر برات انجام بده، بسپارش به ما.\n'
                        'اگه نیاز به سرویس یا تعمیر کولر آبی داری و می‌خوای توی گرمای هوا خیالت از بابت درست کار کردن کولر راحت باشه، بازم همه‌ی کارها رو بسپارش به ما.\n'
                        'این اطمینان رو بهت می‌دیم که با وجود متخصص‌های بااخلاق و حرفه‌ای، تضمین قیمت و گارانتی خدمات، بسپارش به ما بهترین و با کیفیت‌ترین خدمات نصب، راه‌اندازی، تعمیر و سرویس کولر آبی در محل رو بهت ارائه می‌ده.',
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
                          'کولر آبی چه اجزایی داره؟',
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
                        'از موتور شروع می‌کنیم که قلب تپنده و مهم‌ترین قسمت کولره. وقتی هوا حسابی گرم می‌شه ممکنه کل روز کولرتون روشن باشه. توی این شرایط بیشترین فشار کار روی موتور کولره. برای اینکه موتور بتونه از پس حجم کار توی روزهای گرم تابستون بربیاد باید حسابی سرحال باشه و حتما از قبل، سرویس شده باشه. اگه یه وقت دیدین کولر روشن نمی‌شه بهتره آب دستتونه بذارین زمین و متخصص‌های بسپارش به ما رو صدا بزنین چون به احتمال زیاد موتور کولرتون به مشکل برخورده.\n'
                        ' موتور نیروی لازم برای چرخوندن پروانه کولر رو تولید می‌کنه. این وسط یه چیزی به اسم تسمه داریم که نیروی موتور رو به پروانه منتقل می‌کنه تا پروانه بچرخه و جریان هوا تولید کنه. موتور بدون تسمه هم کار می‌کنه، اما دیگه نمی‌تونه نیرو رو به پروانه منتقل کنه. پس تسمه هم خیلی مهمه و اگه نباشه یا پاره و حتی شل بشه دیگه کولر خنک نمی‌کنه. جاانداختن درست تسمه هم برای خودش قلق خاصی داره که اگه درست انجام نشه و زیادی سفت باشه فشار زیادی به موتور میاره و باعث سوختنش می‌شه.\n'
                        'همون‌طور که از اسم کولر آبی مشخصه، با آب کار می‌کنه و بنابراین یکی از اجزای مهمش پمپ آبه. کار پمپ اینه که آب رو از کف کولر به داخل لوله‌ها و از اونجا به پوشال‌ها و پدها می‌رسونه تا اون‌ها رو مرطوب کنه. با تبخیر شدن آب از روی پدها، هوای خنکی که بهش نیاز داریم تا گرمای تابستون رو پشت سر بذاریم تولید می‌شه. اگه یه وقت دیدین کولرتون خنک نمی‌کنه، ممکنه ایراد اصلی از پمپ آب باشه که نمی‌تونه پوشال‌ها و پدهای کولر رو درست مرطوب کنه.\n'
                        'بااینکه کولرهای آبی برندها و انواع مختلفی دارن اما برای کارشناس‌های حرفه‌ای بسپارش به ما فرقی نداره که کولر آبی شما چیه و چجوری کار می‌کنه. هروقت نیاز به نصب، تعمیر یا سرویس کولر آبی داشتین، می‌تونین روی کارشناس‌های ما حساب کنین.',
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
                          'بهترین زمان سرویس کولر آبی کیه؟',
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
                        'پیشگیری همیشه بهتر از درمانه. اگه هرسال کولر آبی رو سرویس کنین خیالتون راحته که با یه هزینه‌ی خیلی کمتر، جلوی ضررهای بزرگ‌تر مثل سوختن یا خراب شدن یهویی کولر رو می‌گیرین و عمر مفید کولر رو خیلی بیشتر می‌کنین.\n'
                        'برای اینکه نزدیک فصل گرما، کولر آبی آماده به کار و سرحال باشه، بهتره توی فصل بهار سرویس بشه، یعنی درست همون موقعی که همه دنبال سرویس‌کار حرفه‌ای می‌گردن و ترافیک تقاضا خیلی زیاده. اما تا بسپارش به ما هست نیازی نیست نگران پیدا کردن کارشناس برای سرویس و تعمیر کولر آبی باشین. بسپارش به ما تمام تلاشش اینه که کارتون روی زمین نمونه و توی سریع‌ترین زمان، بهترین کارشناسش رو براتون می‌فرسته. کارشناس تمام وسایل و قطعات مورد نیاز رو با خودش میاره؛ یعنی نیازی نیست شما از قبل چیزی تهیه کنین.\n',
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
                                    width: 310,
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
