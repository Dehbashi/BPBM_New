import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';
import 'package:bpbm2/screens/components/header.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'برای سیم کشی ساختمون خونه یا محل کارم نیاز به مشاوره دارم، می تونم از کارشناس های بسپارش به ما مشاوره بگیرم؟',
    answer:
        'بله. توی بخش خدمات گزینه‌ی مشاوره رو انتخاب کنین. کارشناس‌های ما برای مشاوره و راهنمایی شما در محل حاضر می‌شن.',
  ),
  FAQItem(
    question:
        'اگر بدنه یکی از وسایل خونه برقدار بشه و ندونم مشکل از خود وسیله هست یا سیم کشی ساختمون، می تونم با بسپارش به ما تماس بگیرم؟',
    answer:
        'بله. کارشناس‌های ما برای عیب‌یابی در محل شما حاضر می‌شن و اگر مشکل از سیم‌کشی یا برق ساختمون شما باشه، برای رفع و تعمیرش اقدام می‌کنن.',
  ),
  FAQItem(
    question:
        'برای برقکاری و سیم کشی کامل ساختمون هم می تونم از خدمات کارشناس های بسپارش به ما استفاده کنم؟',
    answer:
        'بله. فرقی نمی‌کنه کارتون سیم‌کشی کامل یه ساختمون باشه یا فقط برای بخش‌های محدودی نیاز به سیم‌کشی داشته باشین. کارشناس‌های بسپارش به ما کار رو با تعهد و با بهترین کیفیت براتون انجام می‌دن.',
  ),
  FAQItem(
    question: 'تأمین وسایل مورد نیاز برای کارهای سیم کشی ساختمون با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای کارهای سیم کشی ساختمون توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات سیم کشی ساختمون بسپارش به ما استفاده کنم؟',
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

class WiringPage extends StatefulWidget {
  @override
  State<WiringPage> createState() => _WiringPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'مشاوره برای سیم‌کشی ساختمان',
  Image.asset('assets/icons/antennaicons/help.png'): 'عیب‌یابی سیم‌کشی ساختمان',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'اجرا یا تعویض سیم‌کشی',
  Image.asset('assets/icons/antennaicons/setupcenter.png'):
      'کابل‌کشی جزئی و کلی',
  Image.asset('assets/icons/antennaicons/amplifier.png'):
      'نصب یا تعویض مینیاتوری‌های تک‌فاز یا فیوز فشنگی',
  Image.asset('assets/icons/antennaicons/noisecanceler.png'):
      'نصب یا تعویض مینیاتوری‌های سه‌فاز',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'نصب یا جابه‌جایی جعبه مینیاتوری',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'تفکیک کنتور یا جعبه مینیاتوری',
  Image.asset('assets/icons/antennaicons/wiring.png'):
      'مرتب‌سازی سیم‌کشی و کابل‌کشی روکار',
};

class _WiringPageState extends State<WiringPage> {
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
                        'آشنایی با سرویس سیم کشی و کابل کشی',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/services/wiring.png',
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
                      'خدمات سیم‌کشی برق ساختمان رو بسپارش به ما\n'
                      'می‌خوای برای ساختمون خونه یا محل کارت سیم‌کشی انجام بدی و نیاز به مشاوره و اجرا داری؟ با بسپارش به ما از صفر تا صد کار خیالت راحته.\n'
                      'برق‌کشی خونه یا محل کارت دچار مشکل شده و قطعی داری؟ کارشناس‌های برق‌کار بسپارش به ما آماده‌ن تا کار عیب‌یابی و تعمیر رو برات انجام بدن.\n'
                      'اگه سیم‌کشی خونه یا محل کارت فرسوده شده و نیاز به تعمیر و تعویض تجهیزات داری، کار رو بسپارش به ما.',
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
                          'سیم‌کشی ساختمان چیه و شامل چه مواردی می‌شه؟',
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
                      'سیم‌کشی ساختمون تمام مواردی که برای رسوندن برق به نقاط مختلف ساختمون لازمه رو شامل می‌شه؛ مواردی مثل سیم‌ها و کابل‌ها، فیوزها، جعبه تقسیم، جعبه کلید و کنتور برق. از اونجایی که سیم‌کشی، تمام بخش‌های ساختمون رو دربر می‌گیره بنابراین رعایت ایمنی و استانداردهای لازم توی تمام مراحل از نقشه‌کشی تا اجرا و تعمیر و تعویض، خیلی خیلی مهمه، وگرنه می‌تونه خسارت‌های جانی و مالی زیادی به بار بیاره. به همین دلیل هم هست که برای کارهای سیم‌کشی ساختمون حتما باید از کارشناس متخصص و قابل اعتماد کمک گرفت تا بتونه خدمات مدنظر رو با کیفیت و امنیت لازم ارائه کنه.\n'
                      'سیم‌کشی ساختمون به دو روش توکار (داخل دیوارها یا کف) و روکار (روی دیوارها) انجام می‌شه. سیم‌کشی توکار زمان ساخت‌وساز ساختمون‌ها انجام می‌شه که بشه کابل‌کشی‌ها و اتصالات رو توی دیوارها و کف جاسازی کرد. خوبی سیم‌کشی توکار اینه که چون هیچ سیم و کابلی روی دیوارها دیده نمی‌شه، هم به زیبایی بصری ساختمون کمک می‌کنه و هم به‌خاطر در دسترس نبودن اتصالات، احتمال قطعی و خرابی در اثر ضربه و برخورد اجسام وجود نداره.\n'
                      'سیم‌کشی توکار پیچیدگی‌های خاص خودش رو داره و کارشناس برق‌کار این وظیفه رو داره که براساس استانداردها و موارد امنیتی، بهترین و بهینه‌ترین راه رو برای اجرای سیم‌کشی ساختمون پیاده‌سازی کنه. سیم‌کشی توکار به چند روش متداول انجام می‌شه: سیم‌کشی توکار با جعبه تقسیم، سیم‌کشی توکار با جعبه کلید و پریز و سیم‌کشی توکار با جعبه فیوز. از بین این روش‌ها، روش جعبه تقسیم قدیمیه و تقریبا دیگه منسوخ شده و کمتر اجرا می‌شه، اما دو روش دیگه هر دو خوب جواب می‌دن و بسته به صلاحدید کارشناس، می‌شه از هرکدوم توی سیم‌کشی توکار استفاده کرد.\n'
                      'توی سیم‌کشی روکار، سیم‌ها از روی دیوار یا کف عبور می‌کنن و باید برای پوشوندنشون از داکت استفاده کرد تا هم ایمنی بیشتری داشته باشن هم از لحاظ بصری مرتب‌تر باشن، اما بالاخره هرچی باشه بیرون دیوار هستن و بیشتر در معرض رطوبت و ضربه هستن، بنابراین باید بیشتر حواستون بهشون باشه. البته عیب‌یابی و تعمیر سیم‌کشی روکار هم راحت‌تر از حالت توکاره.\n'
                      'بسته به کاربرد و نیاز شما، سیم‌کشی ساختمون می‌تونه به صورت توکار، روکار یا ترکیبی از این دوتا انجام بشه. کارشناس‌های بسپارش به ما، توی تمام کارهای مرتبط با سیم‌کشی ساختمون تخصص دارن. کافیه هر خدماتی که مدنظرتونه توی بسپارش به ما ثبت کنین تا در اسرع وقت کار رو براتون انجام بدیم.',
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
                            'بسپارش به ما برای سیم کشی ساختمان چه خدماتی ارائه می کنه؟',
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
