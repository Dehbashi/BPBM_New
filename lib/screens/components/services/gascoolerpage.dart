import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';
import 'package:bpbm2/screens/components/header.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'بسپارش به ما برای کدوم مدل ها و برندهای کولر گازی و اسپیلت خدمات ارائه می کنه؟',
    answer:
        'برای کارشناس‌های بسپارش به ما فرقی نمی‌کنه مدل یا برند کولر گازی شما چیه؛ از کولر گازی اسپلیت گرفته تا کولر گازی پرتابل و پنجره‌ای، می‌تونین با خیال راحت نصب، تعمیر یا سرویس رو بسپارینش به ما.',
  ),
  FAQItem(
    question:
        'قبل از ثبت درخواست از کجا بفهمم کولر گازی یا اسپیلت خونه و محل کارم چه مشکلی داره؟',
    answer:
        'خوبی بسپارش به ما اینکه که توی هیچ مرحله‌ای از ثبت سفارش تا زمان انجام کار شما رو تنها نمی‌ذاره. حتی اگه نمی‌دونین مشکل کولر گازی یا اسپلیت‌تون چیه، کافیه با پشتیبانی بسپارش به ما تماس بگیرین. نیروهای پشتیبانی یا کارشناس‌های متخصص ما با سوال‌هایی که از شما می‌پرسن، راهنمایی‌تون می‌کنن.',
  ),
  FAQItem(
    question:
        'وسایل مورد نیاز برای نصب، تعمیر یا سرویس کولر گازی یا اسپیلت رو باید خودم تهیه کنم؟',
    answer:
        'نه شما لازم نیست هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای نصب، تعمیر یا سرویس کولر گازی یا اسپیلت توی بسپارش به ما درخواست بدم؟',
    answer:
        'با توجه به اینکه درخواست خدمات رو به صورت آنلاین ثبت می‌کنین، بنابراین هرموقعی که برای نصب، تعمیر یا سرویس کولر گازی نیاز به متخصص داشتین می‌تونین توی بسپارش به ما درخواست بدین. هرزمان که کارشناس‌ها در دسترس باشن، بهترین کارشناس رو برای انجام کارتون به محل شما می‌فرستیم.',
  ),
  FAQItem(
    question: 'بسپارش به ما برای خدمات و تجهیزات ضمانت میده؟',
    answer:
        'بله، تمام خدماتی که کارشناس‌ها ارائه می‌دن و تجهیزاتی که براتون به کار می‌برن، شامل گارانتی و ضمانت بسپارش به ما می‌شه. ما حتی در مورد تعهد اخلاقی و رفتار کارشناس‌ها هم به شما ضمانت می‌دیم تا توی اون زمانی که مهمون خونه یا محل کارتون هستیم، خاطره‌ی خوبی از ارائه‌ی خدمات براتون ثبت کنیم.',
  ),
  FAQItem(
    question: 'می تونم برای هزینه خدمات فاکتور هم بگیرم؟',
    answer:
        'بله اگه نیاز به فاکتور داشته باشین، بسپارش به ما برای وسایل و اقلام به کار برده شده، بهتون فاکتور می‌ده.',
  ),
  FAQItem(
    question:
        'توی کدوم مناطق می تونم از خدمات کولر گازی یا اسپیلت بسپارش به ما استفاده کنم؟',
    answer:
        'توی هرکدوم از مناطق ۲۲ گانه شهر تهران که زندگی می‌کنین، کارشناس‌های ما می‌تونن برای ارائه خدمات در محل شما حاضر بشن. نگران شلوغی و ترافیک هم نباشین و بسپارینش به ما.',
  ),
  // Add more FAQs as needed
];

class Faq {
  final String question;
  final String answer;

  Faq({required this.question, required this.answer});
}

class GasCoolerPage extends StatefulWidget {
  @override
  State<GasCoolerPage> createState() => _GasCoolerPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      ' نصب و راه‌اندازی کامل انواع کولر گازی و اسپلیت',
  Image.asset('assets/icons/antennaicons/help.png'):
      ' تعمیر انواع کولر گازی و اسپلیت',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'سرویس دوره‌ای کولر گازی و اسپلیت',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'داکت‌کشی، برق‌کشی و لوله‌کشی کولر گازی',
  Image.asset('assets/icons/antennaicons/amplifier.png'):
      ' شارژ و رفع نشتی گاز کولر',
  Image.asset('assets/icons/antennaicons/noisecanceler.png'):
      'سرویس زمستانه انواع کولر گازی یا اسپلیت',
  Image.asset('assets/icons/antennaicons/wiring.png'): 'تعمیر اینورتر',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'تعویض قطعات مختلف کولر گازی یا اسپلیت',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'عیب‌یابی و رفع لرزش کولر گازی یا اسپلیت',
};

class _GasCoolerPageState extends State<GasCoolerPage> {
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
                        'آشنایی با سرویس کولر گازی',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/services/gascooler.png',
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                    height: 225,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: textpadding)
                        .add(EdgeInsets.only(bottom: 5)),
                    child: Text(
                      'از نصب و راه‌اندازی تا سرویس و تعمیر کولر گازی و اسپلیت رو بسپارش به ما\n'
                      'قبل از شروع گرمای تابستون به فکر خنک نگه داشتن خونه یا محل کارت هستی؟\n'
                      'اگه به فکر نصب و راه‌اندازی کولر گازی برای خونه یا محل کارت هستی و دنبال یه متخصص می‌گردی که همه کارها رو از صفر تا صد برات انجام بده، بسپارش به ما.\n'
                      'کولر گازی یا اسپلیت داری و می‌خوای قبل از شروع گرما کامل سرویس یا تعمیرش کنی؟ همه‌ی کارها رو بسپارش به ما.\n'
                      'بسپارش به ما همیشه آماده‌ست تا بهترین کارشناس‌های متخصص رو برای نصب، راه‌اندازی، سرویس و تعمیر کولر گازی خونه یا محل کارت در نظر بگیره. کافیه سفارشت رو توی بسپارش به ما ثبت کنی.',
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
                      Flexible(
                        child: Text(
                          'کولر گازی یا اسپلیت چه اجزایی داره و چجوری کار می‌کنه؟',
                          style: theme.textTheme.bodyLarge,
                          textDirection: TextDirection.rtl,
                        ),
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
                      'فرق اصلی کولر گازی یا اسپلیت با کولر آبی اینه که به جای دمیدن هوای خنک به داخل فضا، هوای گرمی رو که توی محیط وجود داره خنک می‌کنه؛ یعنی گرمای هوای محیط رو می‌گیره.\n'
                      'قسمت اصلی کولر گازی یا اسپلیت هم مثل کولر آبی موتورشه. موتور هوای گرمی رو که توی ساختمون وجود داره روی یه شبکه‌ی آلومینیومی به جریان می‌ندازه. زیر شبکه‌ی آلومینیومی، یه نوع سیستم لوله‌ای از جنس مس  تعبیه شده و توی لوله هم مایع سرمازا (مبرد) جریان داره. به مجموعه‌ی لوله‌های مسی و شبکه‌ی آلومینیومی اواپراتور (Evaporator) می‌گن.\n'
                      'حالا که قسمت خنک‌کننده توی کولر گازی یا اسپلیت‌ها رو شناختیم می‌تونیم بهتر بفهمیم که هوا روی چطوری خنک می‌کنه. هوای گرمی که توی محیط وجود داره، از شبکه‌ی آلومینیومی رد می‌شه و به‌خاطر تماس با مایع سرمازا خنک می‌شه، بعدش دوباره به داخل فضا برمی‌گرده.\n'
                      'بعد از اینکه ماده‌ی سرمازا هوا رو خنک کرد، خودش هم گرم می‌شه و باید دوباره خنک بشه.\n'
                      'اینجاست که یه جزء دیگه به نام کمپرسور باید وظیفه‌ش رو انجام بده. کمپرسور همون بخشیه که بیرون از محیط و توی فضای آزاد نصب می‌شه. سرمازا توی این مرحله وارد کمپرسور می‌شه، فشرده می‌شه و دماش باز هم بالاتر می‌ره. حالا سرمازا به‌صورت گازه و باید اول خنک بشه و بعد به‌صورت مایع دربیاد. توی مرحله‌ی اول بخشی به اسم کندانسور دمای گاز رو پایین میاره و بعد شیر انبساط، با فرایند چگالش، گاز رو به مایع تبدیل می‌کنه.\n'
                      'تمام مراحلی که در موردشون صحبت کردیم انقد تکرار می‌شن تا دمای هوای محیط به مقدار دلخواهی که شما تنظیم کردین برسه. بااین‌حساب، اگه کولرتون خنک نمی‌کنه، ممکنه هرکدوم از این مراحل درست انجام نشن و اجزای مختلف توی این چرخه، نیاز به سرویس، تعمیر یا حتی تعویض داشته باشن.\n',
                      style: theme.textTheme.bodyMedium,
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
                SizedBox(height: 0),
                Padding(
                  padding: EdgeInsets.only(right: headingpadding, top: 0),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Text(
                        'بهترین زمان سرویس کولر گازی یا اسپلیت کیه؟',
                        style: theme.textTheme.bodyLarge,
                        textDirection: TextDirection.rtl,
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
                      'بد نیست بدونین که کولر گازی یا اسپلیت سرویس‌های دوره‌ای مختلفی داره. مثلا سرویس کامل که بهتره حدودا هر پنج سال یه بار برای کولرتون انجامش بدین. سرویس سالیانه هم از اسمش مشخصه، قبل از شروع فصل گرما خوبه که یه متخصص برای سرویس سالیانه صدا کنین تا توی گرمای تابستون به مشکل برنخورین و خیالتون از بابت درست کار کردن و آسیب ندیدن کولر راحت باشه. اگر توی زمستون هم از اسپلیت برای گرمایش محیط استفاده می‌کنین، بد نیست قبل از شروع سرما هم یه سرویس زمستونی انجام بدین.\n'
                      'فرقی نمی‌کنه که کولرتون نیاز به سرویس سالیانه داشته باشه یا بخواین سرویس کامل براش انجام بشه. کافیه نوع درخواستتون رو توی سایت یا اپلیکیشن بسپارش به ما ثبت کنین و بقیه‌ی کارها رو بسپارین به متخصص‌های حرفه‌ای و کاربلد بسپارش به ما.\n'
                      'اگر هم نمی‌دونین کولرتون چه نوع سرویسی نیاز داره یا چرا خوب خنک نمی‌کنه، نگران نباشین. با بسپارش به ما تماس بگیرین تا بخش پشتیبانی و نیروهای متخصص‌مون راهنمایی‌تون کنن.\n',
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
                        child: Text(
                          'بسپارش به ما برای آنتن چه خدماتی ارائه می‌ده؟',
                          style: theme.textTheme.bodyLarge,
                          textDirection: TextDirection.rtl,
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
                                  // height: 30,
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
    );
  }
}
