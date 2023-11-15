import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/contactus.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:bpbm2/screens/components/faq.dart';
import 'package:bpbm2/screens/components/header.dart';
// import 'package:bpbm2/customexpansiontile.dart';

List<FAQItem> faqList = [
  FAQItem(
    question: 'بسپارش به ما چیکار میکنه؟',
    answer:
        'بسپارش به ما یه پلتفرم جامع آنلاین برای خدمات برق ساختمانه و به‌عنوان رابط شما با کارشناس‌های متخصص این حوزه عمل می‌کنه. روند کار بسپارش به ما به این صورته که شما خدمت مدنظرتون رو توی سایت یا اپلیکیشن ما ثبت می‌کنین و ما بعد از محاسبه‌ی قیمت و گرفتن تأیید نهایی از شما، بهترین کارشناسمون رو برای ارائه خدمات، به محل مدنظرتون می‌فرستیم',
  ),
  FAQItem(
    question: 'بسپارش به ما چطور کار میکنه؟',
    answer:
        'بعد از اینکه خدمت مورد نظرتون رو از توی سایت یا اپلیکیشن انتخاب کردین، ما با پرسیدن چند سوال ساده از شما، قیمت نهایی کار رو برآورد و بهتون اعلام می‌کنیم. حتی اگر منظور هرکدوم از سوال‌ها رو هم متوجه نشدین یا جوابشون رو نمی‌دونستین، با کارشناس‌های ما تماس بگیرین تا اون‌ها برای جواب دادن به سوال‌ها بهتون کمک کنن',
  ),
  FAQItem(
    question: 'بسپارش به ما توی کدوم مناطق تهران فعاله؟',
    answer: 'خدمات بسپارش به ما توی هر ۲۲ منطقه‌ی تهران ارائه می‌شه',
  ),
  FAQItem(
    question: 'چطور میتونم سفارشم رو ثبت کنم؟',
    answer:
        'کافیه از صفحه‌ی اول سایت یا اپلیکیشن، گزینه‌ی محاسبه‌ی قیمت و ثبت سفارش رو انتخاب کنین. از اون به بعد هم قدم‌به‌قدم پیش می‌ریم تا سفارشتون رو نهایی کنین. یادتون باشه توی هرکدوم از مراحل ثبت سفارش تا رسیدن کارشناس و انجام شدن کار، هر سوالی که دارین می‌تونین با پشتیبانی ما تماس بگیرین تا همکارهامون راهنماییتون کنن',
  ),
  FAQItem(
    question: 'چه زمانهایی می تونم از خدمات بسپارش به ما استفاده کنم؟',
    answer:
        'هرزمانی که بتونیم کارشناس مناسب و در دسترس براتون پیدا کنیم، آماده‌ی خدمات‌دهی به شما هستیم. حتی روزهای تعطیل و آخر هفته‌ها هم می‌تونین به‌صورت ۲۴ ساعته توی بسپارش به ما درخواست خدماتتون رو ثبت کنین',
  ),

  FAQItem(
    question: 'کارشناس های بسپارش به ما چطور انتخاب میشن؟',
    answer:
        'برای انتخاب کارشناس‌هامون اونا رو از فیلترهای مختلفی رد می‌کنیم تا مطمئن باشیم بهترین‌ها رو برای خدمت به شما استخدام کردیم. کارشناس‌های ما گواهی عدم سوء پیشینه دارن و از نظر حرفه‌ای و اخلاقی باید معیارهای سفت و سخت ما رو برآورده کنن.',
  ),
  FAQItem(
    question: 'چطور می تونم درخواستم رو لغو کنم؟',
    answer:
        'بعد از ثبت نهایی سفارش و تا زمانی که کارشناس به محل شما اعزام نشده باشه، می‌تونین از طریق گزینه‌ی لغو سفارش توی پروفایل کاربری‌تون، سفارشتون رو لغو کنین. اگر هم کارشناس رو به محل اعزام کرده باشیم، کافیه با بخش پشتیبانی ما تماس بگیرین تا لغو سفارش رو به‌اطلاع کارشناس برسونن.',
  ),
  FAQItem(
    question: 'چطور می تونم با بسپارش به ما تماس بگیرم؟',
    answer:
        'یه سری به صفحه تماس با ما بزنین. اونجا تمام اطلاعات تماسمون رو براتون نوشتیم. با تلفن و پیامک می‌تونین به بخش پشتیبانی ما وصل بشین. اگر هم انتقاد یا پیشنهادی دارین از طریق فرم ارتباط با ما یا ایمیل باهامون در تماس باشین',
  ),
  FAQItem(
    question: 'بسپارش به ما هزینه خدمات رو چطور محاسبه می کنه؟',
    answer:
        'قیمت نهایی خدمات بسپارش به ما، براساس هزینه‌ی ایاب و ذهاب، دستمزد کارشناس و قطعاتی که برای انجام کار استفاده می‌کنه محاسبه می‌شه. تمام هزینه‌ها رو براساس نرخ اتحادیه و تجربه‌ی کارشناس‌های بسپارش به ما محاسبه می‌کنیم',
  ),
  FAQItem(
    question: 'هزینه ایاب و ذهاب چطور محاسبه میشه؟',
    answer:
        'قیمت نهایی که ما موقع ثبت سفارش بهتون می‌دیم، تمام هزینه‌ها از جمله ایاب و ذهاب رو هم شامل می‌شه که براساس تعرفه‌های اتحادیه محاسبه شده. بنابراین ما هزینه‌ی جداگانه‌ای بابت ایاب و ذهاب از شما دریافت نمی‌کنیم',
  ),
  FAQItem(
    question: 'هزینه خدمات رو چطور پرداخت کنم؟',
    answer:
        'بعد از اینکه کارشناس در محل شما حاضر شد و کار رو انجام داد، شما با انتخاب گزینه‌ی اتمام کار، وارد صفحه‌ی پرداخت می‌شین و می‌تونین مبلغ رو از طریق درگاه بانکی پرداخت کنین. یادتون باشه که نیازی نیست مبلغی به کارشناس بپردازین',
  ),
  FAQItem(
    question: 'اگه نام کاربری یا رمز عبور حسابم رو فراموش کردم چیکار باید کنم؟',
    answer:
        'با پشتیبانی ما تماس بگیرین تا بعد از تأیید هویت شما، نام کاربری یا رمز عبورتون رو از طریق ایمیل یا شماره تلفن‌تون براتون ارسال کنیم',
  ),
  FAQItem(
    question: 'اگه از کیفیت کار راضی نبودم، چیکار باید کنم؟',
    answer:
        'تمام خدمات و قطعاتی که کارشناس‌های بسپارش به ما استفاده می‌کنن شامل گارانتی و ضمانت می‌شه تا بتونیم رضایت کامل شما رو داشته باشیم. بعد از حضور کارشناس در محل و انجام شدن کار، با پر کردن فرم نظرسنجی می‌تونین نظرتون رو در مورد رفتار و کیفیت کار کارشناس با ما در میون بذارین. اگر هم توی فرم نظرسنجی به مورد مدنظرتون اشاره نشده بود، از طریق فرم ارتباط با ما یا تماس با بخش پشتیبانی با ما در تماس باشین',
  ),
  FAQItem(
    question: 'اگه کارشناس تأخیر داشت چیکار کنم؟',
    answer:
        'باتوجه به وضعیت ترافیک و شلوغی خیابون‌ها، ممکنه کارشناس با یه کم تأخیر در محل شما حاضر بشه، اما موظفه که حتما تأخیر رو به ما اعلام کنه تا ما هم اون رو از طریق پروفایل کاربری به اطلاعتون برسونیم. در غیر این‌صورت، هر تأخیر خارج از برنامه‌ای رو به اطلاع ما برسونین تا براتون پیگیری‌های لازم رو انجام بدیم',
  ),
  FAQItem(
    question: 'لوازم مورد نیاز رو ما تهیه کنیم یا کارشناس با خودش میاره؟',
    answer:
        'با سوال‌هایی که قبل از ثبت سفارش ازتون می‌پرسیم، کارشناس می‌تونه عیب‌یابی رو تا حدودی انجام بده و قطعات مورد نیازش رو با خودش بیاره. حتی اگر منظور هرکدوم از سوال‌ها رو هم متوجه نشدین یا جوابشون رو نمی‌دونستین، با کارشناس‌های ما تماس بگیرین تا اون‌ها برای جواب دادن به سوال‌ها بهتون کمک کنن. اگه بعد از حضور در محل و بررسی، مشخص شد که کارشناس به قطعات دیگه‌ای هم نیاز داره، خودش اون‌ها رو تهیه می‌کنه',
  ),
  // Add more FAQs as needed
];

class Faq {
  final String question;
  final String answer;

  Faq({required this.question, required this.answer});
}

class FrequentlyAskedQs2 extends StatelessWidget {
  final double textpadding = 12;
  final double headingpadding = 18;
  final double imageradius = 15;
  final double linespacing = 2.2;
  final double textsize = 16;
  final double headingsize = 24;
  final double bottomiconsize = 75;
  final double answerpadding = 30;
  final double questionboxpadding = 8;
  final double questionboxborderradius = 7;

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
          child: Column(
            children: [
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Text(
                                    'سوالات پر تکرار',
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
                            SizedBox(height: 16),
                            Container(
                              width: double.infinity,
                              height: 593,
                              decoration: BoxDecoration(
                                color: Color(0xFFCDEEF0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(imageradius),
                                    child: Image.asset(
                                      'assets/images/frequent.png',
                                      fit: BoxFit.fitWidth,
                                      width: double.infinity,
                                      height: 220,
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: textpadding),
                                    child: Text(
                                      'کاربر گرامی  ما در این صفحه سعی کردیم به تمامی پرسشهایی که تا به حال از ما پرسیده شده و ممکنه برای شما هم سوال پیش اومده باشه پاسخ بدیم ، در صورتی که پاسخ سوالات خودتون رو تو این بخش پیدا نکردید می تونید از طریق تکمیل  فرم تماس در صفحه تماس با ما یا تماس با شماره های بخش پشتیبانی، پاسخ پرسشهای خودتون رو دریافت کنید ، همکاران ما پاسخگوی شما هستند.',
                                      style: TextStyle(
                                        color: Color(0xFF025459),
                                        fontFamily: 'iransans',
                                        height: linespacing,
                                        fontSize: textsize,
                                      ),
                                      textAlign: TextAlign.justify,
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        height: 40,
                                        width: 210, // Set the desired width
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF04A8B2),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                          ),
                                          onPressed: () {
                                            // Handle button press
                                            Navigator.push(
                                              context,
                                              PageRouteBuilder(
                                                transitionDuration:
                                                    Duration(milliseconds: 300),
                                                transitionsBuilder:
                                                    (BuildContext context,
                                                        Animation<double>
                                                            animation,
                                                        Animation<double>
                                                            secondaryAnimation,
                                                        Widget child) {
                                                  return SlideTransition(
                                                    position: Tween<Offset>(
                                                      begin: Offset(1.0, 0.0),
                                                      end: Offset.zero,
                                                    ).animate(animation),
                                                    child: child,
                                                  );
                                                },
                                                pageBuilder: (BuildContext
                                                        context,
                                                    Animation<double> animation,
                                                    Animation<double>
                                                        secondaryAnimation) {
                                                  return ContactUs();
                                                },
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'تماس با ما',
                                            style: TextStyle(
                                              fontFamily: 'iransans',
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 60),
                            FAQ(faqItems: faqList),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Footer(),
      ),
    );
  }
}
