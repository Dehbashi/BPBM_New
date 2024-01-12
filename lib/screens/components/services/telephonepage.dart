import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';
import 'package:bpbm2/screens/components/header.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'کارشناس های بسپارش به ما می تونن سیم کشی تلفن روکار رو به سیم کشی توکار تبدیل کنن؟',
    answer:
        'با بررسی محل و در صورتی که امکانش وجود داشته باشه، کارشناس‌های بسپارش به ما می‌تونن سیم‌کشی تلفن روکار رو به سیم‌کشی توکار تبدیل کنن.',
  ),
  FAQItem(
    question:
        'بسپارش به ما خدمات مرتب کردن و مشخص کردن خطوط داخل باکس تلفن رو هم انجام میده؟',
    answer:
        'بله. کارشناس‌های بسپارش به ما می‌تونن کار مرتب و مشخص کردن خطوط داخل باکس رو هم انجام بدن.',
  ),
  FAQItem(
    question:
        'اگه سیم کشی های داخل تلفن فرسوده و قدیمی باشن، می تونم برای تعویض از کارشناس های بسپارش به ما کمک بگیرم؟',
    answer:
        'بله. کارشناس‌های ما می‌تونن کار تعویض خطوط فرسوده تلفن داخل ساختمان رو انجام بدن.',
  ),
  FAQItem(
    question: 'تأمین وسایل مورد نیاز برای خدمات تلفن ثابت با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات تلفن ثابت توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات تلفن ثابت بسپارش به ما استفاده کنم؟',
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

class TelephonePage extends StatefulWidget {
  @override
  State<TelephonePage> createState() => _TelephonePageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'تهیه نقشه و جانمایی سیم‌کشی تلفن ساختمان',
  Image.asset('assets/icons/antennaicons/help.png'):
      'اجرای سیم‌کشی تلفن ساختمان',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'راه‌اندازی خطوط داخلی تلفن واحدهای اداری',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'مرتب کردن سیم‌کشی داخلی ساختمان',
  Image.asset('assets/icons/antennaicons/amplifier.png'):
      'عیب‌یابی و رفع خرابی سیم‌کشی داخلی ساختمان',
  Image.asset('assets/icons/antennaicons/noisecanceler.png'):
      'پیدا کردن سرخط تلفن',
};

class _TelephonePageState extends State<TelephonePage> {
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
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);

    return Scaffold(
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
                        'آشنایی با سرویس تلفن ثابت',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/services/telephone.png',
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                    height: 220,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: textpadding)
                        .add(EdgeInsets.only(bottom: 5)),
                    child: Text(
                      'سیم‌کشی و راه‌اندازی تلفن ثابت خونه یا محل کارت رو بسپارش به ما\n'
                      'می‌خوای خط تلفن ثابت خونه یا محل کارت رو راه‌اندازی کنی؟ بسپارش به ما تمام کارهای فنی داخل ساختمون رو برات انجام می‌ده.\n'
                      'اگه سیم‌کشی داخلی تلفن دچار مشکل شده و تلفن ثابتت درست کار نمی‌کنه، عیب‌یابی و برطرف کردن مشکلت رو بسپارش به ما.\n'
                      'تلفن ثابتت نویز داره یا خش‌خش می‌کنه و مشکل از سیم‌کشی داخلی ساختمونه؟ کارشناس‌های بسپارش به ما رو برای عیب‌یابی و رفع خرابی خبر کن.',
                      style: theme.textTheme.bodyMedium,
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
                        'سیم‌کشی تلفن ثابت چه انواعی داره؟',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: textpadding)
                        .add(EdgeInsets.only(bottom: 5)),
                    child: Text(
                      'بااینکه شاید تلفن ثابت دیگه اولویت اول خیلی‌ها برای تماس تلفنی نباشه، اما به‌هرحال نمی‌تونیم نقش مهمی که برای برقراری تماس و اتصال به اینترنت ADSLداره، نادیده بگیریم. توی ادارات و شرکت‌ها، تلفن ثابت همچنان راه ارتباطی اصلی به‌حساب میاد و اهمیت دوچندانی داره، پس اگه مشکلی توی خطوط تلفن پیش بیاد، کارهای زیادی لنگ می‌مونن و راه اصلی ارتباط با اون شرکت یا اداره اختلال پیدا می‌کنه.\n'
                      'سیم‌کشی تلفن دو بخش داره که یه بخشش رو مخابرات انجام می‌ده که بهش می‌گن سیم‌کشی خارجی و کابل تلفن رو تا بیرون ساختمون میاره. بعدش هم سیم‌کشی داخلی ساختمون، بوق تلفن رو به داخل واحدها و خونه‌ها می‌رسونه. سیم‌های مخابراتی که به در منزل می‌رسن سه نوع دارن؛ سیم مسی، فیبر نوری و سیم PCM متداول‌ترین نوع سیم‌کشی که همین الان توی بیشتر مناطق وجود داره، خطوط تمام‌مسی هست. توی سیم‌کشی مسی یک زوج سیم از مرکز مخابرات منطقه تا کافو (باکس‌های خاکستری رنگ مخابرات) محله کشیده می‌شه. بعدش هم از باکس مخابراتی تا منزل‌ها همون زوج سیم مسی ادامه پیدا می‌کنه.\n'
                      'توی سال‌های اخیر، اسم کابل‌های فیبر نوری رو زیاد شنیدیم که دارن جایگزین سیم‌های مسی می‌شن. فیبر نوری، ارتباط اینترنتی پرسرعت یا همون ADSL رو نسبت به سیم مسی خیلی بهبود می‌ده. سیم‌کشی فیبرنوری اینطوریه که از مرکز مخابرات تا کافوی محله فیبر نوریه اما از کافو تا خونه‌ها و ساختمون‌ها زوج‌سیم مسی کشیده می‌شه.\n'
                      'سومین نوع سیم‌کشی که PCM هست از نظر نوع سیم، فرقی با سیم‌کشی مسی نداره و تفاوتش اینه که وقتی زوج سیم‌مسی به در منازل می‌رسه وارد یه باکس سفید می‌شه و اونجا از یک زوج سیم مسی تبدیل به ۴ یا ۸ یا ۱۶ زوج سیم می‌شه. اینطوری مخابرات می‌تونه با یه زوج سیم مسی، ۴ یا ۸ یا ۱۶ خط و شماره تلفن ثابت ارائه کنه.\n'
                      'سیم‌کشی تلفن هم مثل سیم‌کشی ساختمون پیچیدگی‌های خودش رو داره و باید بر اساس نیازمندی‌ها و کاربرد، یه نقشه‌ی مناسب براش تهیه بشه و بعد هم به‌صورت اصولی و درست پیاده‌سازی بشه. برای سیم‌کشی تلفن ثابت باید محل قرارگیری تلفن‌ها مشخص بشه. توی خونه‌ها، روند کار اینطوریه که توی تمام اتاق‌ها پریز تلفن ثابت درنظر گرفته می‌شه و باید دسترسی بهشون هم راحت باشه؛ یعنی پریز تلفن پشت وسایل دیگه مثل بخاری و شوفاژ قرار نگیره.\n'
                      'سیم‌کشی تلفن توی ساختمون‌ها به صورت توکار یا روکار انجام می‌شه. عموما ساختمون‌های قدیمی‌تر از سیم‌کشی روکار استفاده می‌کردن اما الان موقع ساخت سازه‌ی ساختمون‌ها، سیم‌کشی تلفن رو به‌صورت توکار انجام می‌دن. البته هرزمانی که نیاز بشه یا مشکلی به‌وجود بیاد، امکانش هست که رفع مشکل با سیم‌کشی روکار انجام بشه.\n'
                      'از اونجایی که سیم‌کشی تلفن به دو قسمت خارجی و داخلی تقسیم می‌شه، برای همین هم موقع خرابی، باید اول تشخیص داد که مشکل از سیم‌کشی داخل ساختمونه، یا کابل‌های مخابرات دچار مشکل شدن. عیب‌یابی و رفع مشکل سیم‌کشی خارجی به‌عهده‌ی مخابراته، اما برای رفع خرابی سیم‌کشی داخلی ساختمون باید به متخصص برقکار مراجعه بشه. کارشناس‌های بسپارش به ما آماده هستن تا تمام خدمات مرتبط با سیم‌کشی داخلی تلفن ثابت رو به شما ارائه کنن.',
                      style: theme.textTheme.bodyMedium,
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
                        style: theme.textTheme.bodyLarge,
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
                            'بسپارش به ما برای تلفن ثابت چه خدماتی ارائه می‌کنه؟',
                            style: theme.textTheme.bodyLarge,
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
                      children:
                          List<Widget>.generate(antennaimages.length, (index) {
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
                                  width: mediaQuery.size.width * 0.75,
                                  // height: 45,
                                  child: Text(
                                    antennaimages[image]!,
                                    textAlign: TextAlign.justify,
                                    style: theme.textTheme.bodyMedium,
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
    );
  }
}
