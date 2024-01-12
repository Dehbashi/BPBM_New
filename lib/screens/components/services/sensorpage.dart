import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';
import 'package:bpbm2/screens/components/header.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'برای نصب لوستر زنجیر ندارم، کارشناس بسپارش به ما کار اتصال زنجیر رو هم انجام میده؟',
    answer:
        'بله کارشناس می‌تونه در صورت نیاز، زنجیر لوستر رو هم براتون وصل کنه.',
  ),
  FAQItem(
    question:
        'لوستری که می خوام وصل کنم سر هم شده نیست و قطعاتش از هم جداست، کارشناس این کار رو برام انجام می ده؟',
    answer: 'بله کارشناس می‌تونه لوستر رو براتون سر هم کنه.',
  ),
  FAQItem(
    question:
        'تأمین وسایل مورد نیاز برای نصب چراغ، لوستر یا سنسور چراغ با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات چراغ، لوستر یا سنسور چراغ توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات چراغ، لوستر یا سنسور چراغ بسپارش به ما استفاده کنم؟',
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

class SensorPage extends StatefulWidget {
  @override
  State<SensorPage> createState() => _SensorPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'سیم‌کشی و نصب انواع چراغ و لوستر',
  Image.asset('assets/icons/antennaicons/help.png'):
      'جانمایی نصب چراغ و سنسور چراغ',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'نصب انواع چراغ سنسوردار راه‌پله، مشاعات و پارکینگ',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'نصب انواع چراغ تایمردار',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'تعویض تایمر با سنسور',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'نصب انواع سنسور حرکتی',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'تعمیر انواع چراغ چشمی راه‌پله',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'تعمیر انواع سنسور حرکتی',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'عیب‌یابی، سیم‌کشی مجدد و تنظیمات انواع سنسور چراغ',
  Image.asset('assets/icons/antennaicons/setupcenter.png'): 'نصب پروژکتور',
};

class _SensorPageState extends State<SensorPage> {
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
                        'آشنایی با سرویس چراغ و سنسور',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/services/sensor.png',
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
                      'جانمایی، نصب و تعمیر انواع چراغ و سنسور رو بسپارش به ما\n'
                      'اگه برای راه‌پله و مشاعات ساختمون خونه یا محل کارت نیاز به نصب سنسور چراغ یا چراغ تایمردار داری، می‌تونی روی کارشناس‌های حرفه‌ای بسپارش به ما حساب کنی.\n'
                      'کارشناس‌های بسپارش به ما در اسرع وقت می‌تونن هر نوع چراغ و لوستری که برای خونه یا محل کارت تهیه کردی برات نصب کنن.',
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
                            'از سنسور چراغ توی کدوم بخش‌های ساختمون استفاده می‌شه؟',
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
                      'سنسورها یا حسگرها جزو اون دسته از تجهیزاتی هستن که هم باعث راحتی کار ما می‌شن و هم جلوی اتلاف بی‌رویه‌ی انرژی رو می‌گیرن. سنسورهایی که توی برق ساختمون به کار می‌رن عموما برای مشاعات مثل پارکینگ، راه‌پله و طبقات استفاده می‌شن. توی خیلی از ساختمون‌ها دیدیم که بعد از وارد شدن به پارکینگ، چراغ مربوط به همون بخشی که ازش رد شدیم روشن می‌شه. این کار رو سنسور انجام می‌ده و بعد از اینکه حرکت ما رو تشخیص داد به چراغ فرمان می‌ده که روشن بشه.\n'
                      'سنسورها رو می‌شه دوجور نصب کرد، همراه با چراغ‌ها یا به‌صورت جدا. وقتی سنسور به‌صورت جدا قرار می‌گیره، باید با سیم‌کشی به چراغ‌های مدنظر وصل بشه. تعداد چراغ‌هایی که می‌شه به هر سنسور وصل کرد براساس ظرفیت جریانی یا عدد آمپر اون سنسور مشخص می‌شه، بنابراین اینطوری نیست که بشه هرتعداد چراغی که دلمون خواست به یه سنسور وصل کنیم.\n'
                      'سنسورهایی که در حاضر توی ساختمون‌ها به کار می‌رن عموما از نوع حرکتی هستن و بر اساس زاویه‌ی دیدی که ارائه می‌کنن برای استفاده توی راهرو، راه‌پله یا محوطه پارکینگ ازشون استفاده می‌شه. مثلا سنسورهای ۱۴۰ و ۳۶۰ درجه عموما برای راه‌پله‌ها استفاده می‌شن و سنسورهای ۱۸۰ درجه هم برای روی دیوار انتخاب می‌شن. توی بعضی کاربردها هم به‌جای سنسورهای حرکتی، از سنسورهای فتوسل که به نور حساسن استفاده می‌شه. مثلا برای محوطه‌ی حیات ساختمون‌ها، می‌شه از سنسورهای فتوسل استفاده کرد تا وقتی نور محیط از یه حدی کمتر شد، روشن بشن.\n'
                      'بعضی وقت‌ها هم توی ساختمون‌ها به جای سنسور، از چراغ‌های تایمردار استفاده می‌شه. عملکرد چراغ‌های تایمردار اینطوریه که تا چند دقیقه بعد از اینکه شما کلید مربوط به چراغ رو فشار دادین، چراغ روشن می‌شه و بعدش خودش خاموش می‌شه. توی بعضی از ساختمون‌ها، برای راه‌پله چراغ تایمردار درنظر گرفته می‌شه تا وقتی اشخاص دارن از پله‌ها تردد می‌کنن، کلید برق رو بزنن و چراغ‌های راه‌پله تا چند دقیقه روشن بمونن. عیب چراغ‌های تایمردار اینه که شما توی تاریکی باید دنبال کلید بگردین تا بتونین چراغ رو روشن کنین.\n'
                      'برای هرنوع خدماتی که در مورد انواع چراغ، لوستر سنسور و چراغ‌های سنسوردار داشته باشین، می‌تونین از خدمات کارشناس‌های بسپارش به ما استفاده کنین.',
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
                            'بسپارش به ما برای چراغ و سنسور چه خدماتی ارائه می‌کنه؟',
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
