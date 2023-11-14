import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:url_launcher/url_launcher.dart';

List<Faq> faqs = [
  Faq(
    question:
        'ساختمون مسکونی یا محل کارم محافظ برق مرکزی نداره، بسپارش به ما برای یک یا چند واحد هم خدمات محافظ برق ارائه می کنه؟',
    answer:
        'بله، کارشناس‌های بسپارش به ما می‌تونن برای واحد مسکونی یا اداری شما هم محافظ برق نصب کنن.',
  ),
  Faq(
    question: 'در صورت دوفاز شدن برق، باز هم محافظ می تونه برق رو قطع کنه؟',
    answer:
        'بله در حالتی که دوفاز شدن اتفاق افتاده باشه هم محافظ می‌تونه برق رو قطع کنه.',
  ),
  Faq(
    question: 'امکانش هست محافظ برق رو کارشناس بسپارش به ما تهیه کنه؟',
    answer:
        'بله کارشناس می‌تونه محافظ برق رو قبل از اینکه در محل حاضر بشه تهیه کنه.',
  ),
  Faq(
    question: 'تأمین وسایل مورد نیاز برای نصب محافظ برق با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  Faq(
    question:
        'چه زمان هایی می تونم برای خدمات محافظ برق ساختمان توی بسپارش به ما درخواست بدم؟',
    answer:
        'از اونجایی که درخواست خدمات رو به صورت آنلاین ثبت می‌کنین، بنابراین هرموقعی که برای سیم‌کشی ساختمون نیاز به متخصص داشتین می‌تونین توی بسپارش به ما درخواست بدین. هرزمان که کارشناس‌ها در دسترس باشن، بهترین کارشناس رو برای انجام کار به محل شما می‌فرستیم.',
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
        'توی کدوم از مناطق می تونم از خدمات محافظ برق ساختمان بسپارش به ما استفاده کنم؟',
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

class BreakerPage extends StatefulWidget {
  @override
  State<BreakerPage> createState() => _BreakerPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'مشاوره برای حفاظت برق ساختمان',
  Image.asset('assets/icons/antennaicons/help.png'):
      'نصب و راه‌اندازی انواع ادوات حفاظتی برای برق ساختمان‌های مسکونی، اداری، صنعتی',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'نصب و راه‌اندازی ترانس، استابلایزر و تجهیزات حفاظت برق ساختمان',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'عیب‌یابی سیستم حفاظت برق ساختمان',
};

class _BreakerPageState extends State<BreakerPage> {
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
                          'آشنایی با سرویس محافظ ساختمان',
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
                      'assets/images/services/breaker.png',
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
                        'تعمیر و نصب محافظ برق ساختمان رو بسپارش به ما\n'
                        'اگه می‌خوای موقع نوسانات برق خیالت از بابت آسیب ندیدن وسایل برقی خونه‌ت راحت باشه، برای نصب یا تعمیر محافظ برق ساختمونت بسپارش به ما کنارته.\n'
                        'دفتر کارت پر از وسایل الکترونیکیه و نمی‌تونی برای دونه‌دونه وسایل محافظ برق درنظر بگیری؟ بسپارش به ما با نصب محافظ برق مرکزی خیالت رو از این بابت راحت می‌کنه.',
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
                          'محافظ برق ساختمان چیه و چجوری کار می‌کنه؟',
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
                        'همه‌ی ما توی خونه‌هامون از محافظ‌های برق برای وسایل الکتریکی خونه استفاده می‌کنیم. اما می‌دونستین که می‌شه به‌جای اینکه روی هر وسیله‌ی برقی خونه یه محافظ بذاریم، یه محافظ مرکزی برای ساختمون خونه یا محل کارمون استفاده کنیم تا از کل وسایل برقی محافظت کنه؟\n'
                        'محافظ مرکزی برق ساختمون دقیقا کارش همینه. این نوع محافظ‌ها رو توی مسیر برق ورودی ساختمون نصب می‌کنن تا جلوی نوسانات برق رو بگیره. وقتی برق نوسان می‌کنه یا هر ایرادی توی سیستم برق‌رسانی ساختمون به‌وجود میاد، محافظ بلافاصله جریان ورودی برق ساختمون رو قطع می‌کنه تا وسایل دچار آسیب نشن. به محض اینکه شرایط برق به حالت عادی برگرده و پایدار بشه، محافظ جریان برق رو مجددا برقرار می‌کنه.\n'
                        'برای ساختمون‌هایی که محافظ‌های مرکزی برق برای کل ساختمون ندارن، می‌شه توی ورودی هر واحد هم یه محافظ برق ‌به‌صورت جداگانه نصب کرد. محافظ هر واحد توی جعبه‌ی فیوز قرار می‌گیره و طوری تنظیم می‌شه که اگه ولتاژ برق از یه بازه‌ای کمتر یا بیشتر شد، فیوز کل واحد رو قطع کنه.\n'
                        'استفاده از محافظ برق توی ساختمون‌ها و واحدهای اداری یا صنعتی هم مثل خونه‌ها اهمیت زیادی داره، چون تمام وسایل و ادوات الکتریکی و الکترونیکی می‌تونن تحت تأثیر نوسان برق دچار آسیب بشن. محافظ‌های برقی که توی واحدهای صنعتی استفاده می‌شن از نظر مشخصات فنی با محافظ‌های برق ساختمون‌های اداری و مسکونی تفاوت دارن و می‌تونن توی ولتاژ و جریان‌های بالا کار کنن.\n'
                        'محافظ‌های برق انواع مختلفی دارن مثل ترانس و استابلایزر. برای تصمیم گرفتن در مورد نوع محافظ، کارشناس متخصص بسته به شرایط محیط و نوع کاربری ساختمون می‌تونه تصمیم بگیره که بهتره از چه نوع محافظی استفاده بشه.',
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
                              'بسپارش به ما برای حفاظت برق ساختمان چه خدماتی ارائه می‌کنه؟',
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
