import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:url_launcher/url_launcher.dart';

List<Faq> faqs = [
  Faq(
    question:
        'بسپارش به ما برای کدوم مدل ها و برندهای آیفون خدمات ارائه می کنه؟',
    answer:
        'کارشناس‌های ما توی نصب، عیب‌یابی و تعمیر تمام آیفون‌های صوتی، تصویری نامبرینگ و کدینگ حرفه‌ای هستن. فرقی نمی‌کنه آیفون از چه برندی باشه، شما درخواست یا مشکلتون رو توی بسپارش به ما ثبت می‌کنین و کارشناس‌های ما برای خدمت‌رسانی به شما در محل حاضر می‌شن.',
  ),
  Faq(
    question: 'برای تعویض آیفون صوتی یا تصویری، حتما باید سیم کشی هم عوض بشه؟',
    answer:
        'این مورد با سیم‌کشی آیفون فعلی شما ارتباط داره. کارشناس‌های ما با حضور در محل و بررسی سیم‌کشی می‌تونن بهتون بگن که لازمه برای تعویض سیم‌کشی هم اقدامی انجام بشه یا با همون سیم‌کشی قبلی هم می‌شه آیفون تصویری رو نصب کرد.',
  ),
  Faq(
    question:
        'تأمین وسایل مورد نیاز برای نصب، عیب یابی یا تعمیر آیفون با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  Faq(
    question:
        'توی کدوم مناطق می تونم از خدمات نصب، سرویس یا تعمیر کولر آبی بسپارش به ما استفاده کنم؟',
    answer:
        'توی هرکدوم از مناطق ۲۲ گانه شهر تهران که زندگی می‌کنین، کارشناس‌های ما می‌تونن برای ارائه خدمات در محل شما حاضر بشن.',
  ),
  Faq(
    question:
        'چه زمانی می تونم برای نصب، تعویض یا تعمیر آیفون توی بسپارش به ما درخواست بدم؟',
    answer:
        'از اونجایی که درخواست خدمات رو به صورت آنلاین ثبت می‌کنین، بنابراین هرموقعی که برای نصب، تعویض یا تعمیر آیفون نیاز به متخصص داشتین می‌تونین توی بسپارش به ما درخواست بدین. هرزمان که کارشناس‌ها در دسترس باشن، بهترین کارشناس رو برای انجام کار به محل شما می‌فرستیم.',
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
  // Add more FAQs as needed
];

class Faq {
  final String question;
  final String answer;

  Faq({required this.question, required this.answer});
}

class IphonePage extends StatefulWidget {
  @override
  State<IphonePage> createState() => _IphonePageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'راه‌اندازی و نصب آیفون‌های صوتی، تصویری و کدینگ',
  Image.asset('assets/icons/antennaicons/help.png'):
      'سرویس و تعمیر آیفون‌های صوتی، تصویری و کدینگ',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'نصب پنل آیفون برای انواع آیفون‌ها',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'سرویس و تعمیر پنل برای انواع آیفون‌ها',
  Image.asset('assets/icons/antennaicons/amplifier.png'):
      'رفع ایراد تصویر و صدا در آیفون تصویری و کدینگ',
  Image.asset('assets/icons/antennaicons/noisecanceler.png'):
      'سیم‌کشی آیفون تصویری و کدینگ',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'عیب‌یابی آیفون تصویری و کدینگ و رفع اتصالی آیفون',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'تعویض آیفون‌های قدیمی صوتی یا تصویری با مدل‌های جدیدتر',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'تعویض آیفون‌های تصویری نامبرینگ با کدینگ',
};

class _IphonePageState extends State<IphonePage> {
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
                          'آشنایی با سرویس آیفون',
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
                      'assets/images/services/iphone.png',
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
                        'نصب، تعویض و تعمیر آیفون‌های صوتی، تصویری و کدینگ رو بسپارش به ما\n'
                        'نیاز به نصب و سیم‌کشی آیفون تصویری یا کدینگ توی ساختمون مسکونی یا محل کارت داری؟ بسپارش به ما.\n'
                        'می‌خوای آیفون صوتی یه ساختمون قدیمی رو به آیفون تصویری تبدیل کنی؟ کار تعویض رو بسپارش به ما.\n'
                        'آیفون خونه یا محل کارت درست کار نمی‌کنه و نمی‌دونی مشکل از کجاست؟ عیب‌یابی و تعمیرش رو بسپارش به ما.\n'
                        'هر خدماتی که در مورد آیفون‌های صوتی، تصویری یا کدینگ بخوای، بسپارش به ما با کارشناس‌های حرفه‌ای و متعهدش کنارت حضور داره تا کار رو به بهترین نحو برات انجام بده.',
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
                          'فرق آیفون‌های تصویری نامبرینگ با آیفون‌های کدینگ چیه؟',
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
                        'این روزها کمتر خونه‌ای رو می‌شه پیدا کرد که از آیفون تصویری استفاده نکنه. حتی توی خونه‌ی مادربزرگ و پدربزرگ‌هامون هم دیگه خبری از آیفون‌های صوتی یا همون اف‌اف‌های قدیمی نیست و آیفون‌های تصویری حسابی جای پاشون رو همه‌جا محکم کردن. دو نوع آیفون تصویری داریم؛ آیفون‌های نامبرینگ و آیفون‌های کدینگ. این دو نوع آیفون که توی ساختمون‌ها، مجتمع‌ها و برج‌ها مورد استفاده قرار می‌گیرن، هم توی ظاهر و هم توی نحوه‌ی کار تفاوت‌های کوچیکی با هم دارن.\n'
                        'توی آیفون‌های نامبرینگ برای هر واحد یه شماره و دکمه در نظر گرفته شده. شما برای اینکه زنگ واحد مدنظرتون رو بزنین باید دکمه‌ی همون واحد رو فشار بدین. توی آپارتمان‌ها و مجتمع‌هایی که تعداد واحدشون خیلی زیاد نباشه، می‌شه از آیفون‌های نامبرینگ استفاده کرد اما وقتی تعداد واحدها از یه حدی بیشتر بشه، دیگه باید بریم سراغ آیفون‌های کدینگ.\n'
                        'توی آیفون‌های کدینگ دیگه از یه دکمه‌ی زنگ جدا برای هرواحد خبری نیست و فقط یه پنل با شماره‌های یک تا نه می‌بینیم. روش کار آیفون‌های کدینگ اینطوریه که برای هرواحد یه کد درنظر گرفته می‌شه و وقتی شما اون کد رو روی پنل دم در وارد می‌کنین، با استفاده از بخشی به نام دیکودر، آیفون تشخیص می‌ده که باید زنگ کدوم واحد رو به صدا دربیاره.\n'
                        'ضمنا بعضی از آیفون‌های کدینگ این امکان رو به صاحب واحد می‌دن تا بتونه با استفاده از رمزگذاری‌های مختلف مثل پسورد یا اثرانگشت، در رو باز کنه. آیفون‌های تصویری پیشرفته‌تر امکان کنترل کردن وروردی خونه از راه دور رو هم به شما می‌دن. یعنی حتی اگه خونه نباشین و کسی زنگ در خونه‌تون رو بزنه، با شما تماس گرفته می‌شه و می‌تونین از راه دور در رو برای شخص مورد نظر باز کنین.\n'
                        'آیفون‌های صوتی و تصویری از اجزای مختلفی تشکیل می‌شن که شامل مانیتور، گوشی، دوربین، شستی برای زنگ زدن، ترمینال‌های اتصالی، قفل بازکن و منبع تغذیه می‌شه. ممکنه کار هرکدوم از این بخش‌ها به مشکل بربخوره و توی درست کار کردن آیفون اختلال ایجاد بشه. رایج‌ترین مشکل آیفون‌ها زنگ نخوردنه که می‌تونه سه عامل اصلی داشته باشه؛ سیم‌کشی، بلندگو یا برد آیفون. به‌خاطر تعدد و تنوع اجزای آیفون‌ها، عیب‌یابی آیفون کار ساده‌ای نیست و باید حتما توسط متخصص بررسی بشه تا بتونه منبع اصلی مشکل رو شناسایی کنه. برای این مورد یا هر مشکل دیگه‌ای که ممکنه برای آیفون خونه یا محل کارتون به‌وجود بیاد، می‌تونین روی کمک کارشناس‌های بسپارش به ما حساب کنین.',
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
                              'بسپارش به ما برای آیفون‌های صوتی، تصویری و کدینگ چه خدماتی ارائه می‌ده؟',
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
