import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/header.dart';

import 'package:bpbm2/screens/components/faq.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'برای نصب دزدگیر، تجهیزات اصلی مثل سنسورها رو باید خودم تهیه کنم یا کارشناس برام تهیه می کنه؟',
    answer:
        'کارشناس می‌تونه قبل از حاضر شدن در محل شما، در صورتی که جانمایی و تعداد تجهیزات مشخص شده باشه خودش وسایل مورد نیاز رو تهیه کنه و همراهش بیاره.',
  ),

  FAQItem(
    question:
        'سیستم دزدگیرم درست کار نمی کنه و دچار مشکل شده، بسپارش به ما کار عیب یابی و تعمیر یا تعویض رو انجام می ده؟',
    answer:
        'بله، کافیه خدمات مدنظرتون رو توی بسپارش به ما ثبت کنین تا کارشناس‌های ما برای عیب‌یابی و انجام تعمیرات یا تعویض تجهیزات در محل شما حاضر بشن.',
  ),

  FAQItem(
    question:
        'تأمین وسایل جانبی مورد نیاز برای نصب یا تعمیر و تعویض سیستم دزدگیر با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),

  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات دزدگیر اماکن توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات دزدگیر اماکن بسپارش به ما استفاده کنم؟',
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

class BurglarAlarmPage extends StatefulWidget {
  @override
  State<BurglarAlarmPage> createState() => _BurglarAlarmPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'نصب انواع دزدگیر برای اماکن',
  Image.asset('assets/icons/antennaicons/help.png'):
      'جانمایی و سیم‌کشی برای نصب دزدگیر اماکن',
  Image.asset('assets/icons/antennaicons/help.png'):
      'عیب‌یابی، تعمیر و تعویض دزدگیر اماکن',
};

class _BurglarAlarmPageState extends State<BurglarAlarmPage> {
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
                        'آشنایی با سرویس دزدگیر',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/services/burglaralarm.png',
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
                      'نصب دزدگیر برای خونه و محل کارت رو بسپارش به ما\n'
                      'اگه تو فکر اینی که برای خونه یا محل کارت دزدگیر نصب کنی، کارشناس‌های بسپارش به ما می‌تونن تمام مراحل کار رو برات انجام بدن.\n'
                      'برای جانمایی و سیم‌کشی سیستم دزدگیر نیاز به کمک داری؟ بسپارش به ما رو خبر کن.',
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
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            'دزدگیر اماکن چطور کار می‌کنه و چه انواعی داره؟',
                            style: theme.textTheme.bodyLarge,
                          ),
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
                      'این روزها نه‌تنها خیلی از شرکت‌ها و مجتمع‌های اداری و تجاری برای تأمین امنیتشون از دزدگیرها استفاده می‌کنن، بلکه خیلی از مجتمع‌های مسکونی هم دزدگیر دارن تا خیال ساکنین بابت امنیت خونه‌هاشون راحت باشه. بااینکه دزدگیرها انواع مختلفی دارن اما تقریبا کارکرد همه‌شون با هم یکیه. توی تمام دزدگیرها یک سیستم مرکزی داریم که مهم‌ترین بخش دزدگیر به‌حساب میاد و وظیفه کنترل و هماهنگ کردن بقیه‌ی اجزا رو به‌عهده داره. سیستم مرکزی، سیگنال‌هایی که سنسورها می‌فرستن دریافت می‌کنه و اگه هر سیگنال غیر عادی‌ای بهش برسه، فرمان‌هایی که از قبل براش تعریف شده اجرا می‌کنه.\n'
                      'بسته به نوع دزدگیر، معمولا سیستم مرکزی رو به تلفن همراه یا تلفن ثابت متصل می‌کنن تا در صورتی که شرایط غیرعادی پیش اومد، با اون شماره‌ها تماس گرفته بشه. بعضی از دزدگیرها، آژیر صوتی هم دارن که وقتی سیستم مرکزی فرمان بده به صدا درمیاد و دزدهای احتمالی رو می‌ترسونه و اطرافیان رو هم آگاه می‌کنه. بعضی وقت‌ها هم کار اطلاع‌رسانی به‌جای آژیر با هشداردهنده‌های نوری مثل چراغ‌های چشمک‌زن انجام می‌شه.\n'
                      'سیستم مرکزی عموما یه صفحه کلید هم روش داره که می‌شه کد فعال‌سازی دستگاه رو توش وارد کرد. بعضی از دزدگیرها یک ریموت کنترل هم دارن که با استفاده از اون می‌تونیم سیستم رو فعال یا غیرفعال کنیم. احتمالا توی فیلم‌ها دیده باشین که موقع سرقت از طلافروشی یا بانک‌ها، فروشنده یا باجه‌دار یواشکی یه دکمه‌ای رو می‌زنه یا با پاش یه پدال رو فشار می‌ده. این پدال اسمش پدال اضطراریه و دزدگیرهایی که توی چنین محل‌هایی نصب می‌شن معمولا پدال هم دارن.\n'
                      'بخش مهم دیگه‌ی سیستم‌های دزدگیر، سنسورها هستن که وظیفه‌ی تشخیص ورود افراد یا سایر اتفاقات غیرعادی رو به‌عهده دارن. سنسورها انواع مختلفی دارن؛ سنسور حرکتی، سنسور ورود، سنسور شکست یا تخریب، سنسور دود و سنسور حرارتی، از انواع مختلف سنسورهای متداولی هستن که توی دزدگیرها استفاده می‌شن. بااینکه وظیفه‌ی دزدگیرها مشخصه، اما می‌شه اون‌ها رو یه پله ارتقا داد و با نصب سنسورهای تشخیص حرارت و آتیش، به عنوان سیستم اعلام حریق هم ازشون استفاده کرد.\n'
                      'دزدگیر انواع مختلفی داره که براساس نحوه‌ی کار می‌شه یه دسته‌بندی ساده براش درنظر گرفت؛ دزدگیر ساده، دزدگیر تلفنی، دزدگیر هوشمند. دزدگیر ساده تقریبا قدیمی‌ترین نوع دزدگیرها هستن که با آژیر صوتی یا آژیر نوری، خبررسانی رو انجام می‌ده و قابلیت این رو نداره که با شما یا پلیس تماس بگیره. دزدگیرهای ساده برای محله‌های شلوغ خیلی گزینه‌ی مناسبیه. چون وقتی آژیر به صدا درمیاد خیالتون راحته که حتما یه نفر صدای آژیر رو می‌شنوه و به پلیس یا به شما خبر می‌ده.\n'
                      'دزدگیر تلفنی هم اینطوریه که شما توی اون یه سری شماره تلفن مثل شماره پلیس و شماره خودتون رو وارد می‌کنین تا توی موقعیت اضطراری با اون شماره‌ها تماس گرفته بشه و یه پیغامی که از قبل ضبط شده، پخش بشه. دزدگیرهای تلفنی می‌تونن با تلفن ثابت، سیم‌کارت یا هم سیم‌کارت و هم تلفن ثابت کار کنن. بهتره که دزدگیر فقط به تلفن ثابت متکی نباشه، چون دزدها می‌تونن خیلی راحت سیم تلفن خونه رو قطع کنن و دزدگیر رو از کار بندازن. دزدگیر هوشمند، از همه‌ی دزدگیرهای دیگه پیشرفته‌تره و می‌شه از راه دور هم بهش دسترسی داشت. دزدگیر هوشمند به گوشی همراه شما وصل می‌شه و می‌تونین با گوشی‌تون دزدگیر رو کنترل کنین.',
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
                            'بسپارش به ما برای دزدگیر اماکن چه خدماتی ارائه می‌کنه؟',
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
