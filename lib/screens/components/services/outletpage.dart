import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';
import 'package:bpbm2/screens/components/header.dart';

List<FAQItem> faqList = [
  FAQItem(
    question:
        'نمی دونم باید چه نوع کلید و پریزی برای ساختمونم تهیه کنم، می تونم از کارشناس های بسپارش به ما مشاوره بگیرم؟',
    answer:
        'بله، در صورتی که نیاز به مشاوره داشته باشین، کارشناس‌های ما می‌تونن با حاضر شدن در محل، در مورد انتخاب کلید و پریز مناسب راهنمایی‌تون کنن.',
  ),
  FAQItem(
    question: 'خودم باید کلید و پریز رو برای نصب آماده کنم؟',
    answer:
        'از اونجایی که به‌جز کاربرد و عملکرد، ظاهر کلید و پریز هم مهمه و براساس دکوراسیونتون انتخاب می‌شه، بهتره که کار تهیه‌ی کلید و پریز رو خودتون انجام بدین. در غیر اینصورت کارشناس این امکان رو داره که با هماهنگی شما، برای تهیه‌ی کلید و پریز اقدام کنه.',
  ),
  FAQItem(
    question:
        'اگه نیاز به باز کردن، جابجایی یا دوباره جا زدن کلیدها و پریزها داشته باشم، می تونم از بسپارش به ما کمک بگیرم؟',
    answer:
        'بله، کارشناس‌های بسپارش به ما می‌تونن تمام این خدمات رو براتون انجام بدن.',
  ),
  FAQItem(
    question: 'تأمین وسایل مورد نیاز برای خدمات کلید و پریز با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات کلید و پریز توی بسپارش به ما درخواست بدم؟',
    answer:
        'از اونجایی که درخواست خدمات رو به صورت آنلاین ثبت می‌کنین، بنابراین هرموقعی که برای کلیدها و پریزها نیاز به متخصص داشتین می‌تونین توی بسپارش به ما درخواست بدین. هرزمان که کارشناس‌ها در دسترس باشن، بهترین کارشناس رو برای انجام کار به محل شما می‌فرستیم.',
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
        'توی کدوم از مناطق می تونم از خدمات دوربین مداربسته بسپارش به ما استفاده کنم؟',
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

class OutletPage extends StatefulWidget {
  @override
  State<OutletPage> createState() => _OutletPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'نصب انواع کلید و پریز',
  Image.asset('assets/icons/antennaicons/help.png'): 'تعویض انواع کلید و پریز',
  Image.asset('assets/icons/antennaicons/setupbox.png'):
      'اضافه کردن انشعاب برای انواع کلید و پریز',
};

class _OutletPageState extends State<OutletPage> {
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
                        'آشنایی با سرویس کلید و پریز',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/services/outlet.png',
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
                      'نصب و تعویض انواع کلید و پریز ساختمونت رو بسپارش به ما\n'
                      'بعد از سیم‌کشی خونه یا محل کارت که نیاز به نصب کلید و پریز داری، کار رو بسپارش به ما.\n'
                      'اگه پریز یا کلید ساختمونت خراب شده، بسپارش به ما برای تعویضش کنارته.\n'
                      'نمی‌دونی برای ساختمونت چه کلید و پریزی مناسبه؟ کارشناس‌های بسپارش به ما می‌تونن کامل راهنماییت کنن.\n',
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
                          'کلید و پریز چه انواعی داره و فرقشون با هم چیه؟',
                          style: theme.textTheme.bodyLarge,
                          textDirection: TextDirection.rtl,
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
                      'با اینکه کلید و پریز کوچیک‌ترین اجزای برق ساختمون هستن، اما از اونجایی که خروجی اصلی برق ساختمون به حساب میان، اهمیت خیلی زیادی دارن. شما برای اتصال هروسیله‌ی برقی یا روشن کردن هر چراغ و لامپی باید از کلید و پریز استفاده کنین. حتی اگه بهترین سیم‌کشی ساختمون رو هم انجام داده باشین، کافیه یکی از کلیدها یا پریزها از کار بیفته یا خراب بشه تا کارتون حسابی لنگ بمونه. بااین‌حساب، موقع نصب کلید و پریز، هم باید از محصولات با کیفیت استفاده کنین و هم با خبر کردن یه کارشناس کاربلد، خیال خودتون رو راحت کنین که قراره بهترین خروجی رو تحویل بگیرین.\n'
                      'اگه یه سری به لاله‌زار و الکتریکی‌ها بزنین، چشمتون به انواع و اقسام کلید و پریز می‌افته که ممکنه علاوه‌بر ظاهر و طراحی، توی طرز کار هم با هم متفاوت باشن. تفاوت ظاهری کلیدها باعث می‌شه که براساس زیبایی و دکوراسیون خونه یا محل کارتون، گزینه‌های مختلفی برای انتخاب داشته باشین.\n'
                      'کلیدها و پریزها از نظر کاربرد به دو دسته‌ی مسکونی و صنعتی تقسیم می‌شن و تفاوتشون هم توی میزان جریانی هست که می‌تونن تحمل کنن. کلید و پریزها رو هم مثل سیم‌کشی، می‌شه به صورت روکار و توکار پیاده‌سازی کرد.\n'
                      'از نظر فنی، کلیدها و پریزها انواع مختلفی دارن که بد نیست به صورت اجمالی با اسمشون آشنا بشیم. از انواع مختلف کلید می‌تونیم کلیدهای تک پل، دو پل، سه پل، چهار پل، تبدیل، دیمر و صلیبی رو اسم ببریم. پریزهای برق رو هم می‌تونیم به دو دسته‌ی ارت‌دار و بدون ارت تقسیم‌بندی کنیم. به‌جز پریزهای برق، یه سری پریز دیگه هم داریم؛ مثلا پریز تلفن، پریز شبکه، پریز آنتن و پریز UPS. بسته به سیم‌کشی ساختمون و کاری که قراره هرکدوم از پریزها و کلیدها انجام بدن، برق‌کار تصمیم می‌گیره که بهتره از کدوم نوع کلید یا پریز استفاده کنه.\n'
                      'بد نیست بدونین به جز کلید و پریزهایی که به‌صورت سوییچی یا فشاری کار می‌کنن، انواع دیگه‌ای هم هستن که مدرن‌تر و پیشرفته‌ترن. مثلا کلیدهای لمسی که به جای فشار دادن کلید، پنلش رو لمس می‌کنین تا چراغ‌ها خاموش و روشن بشن. کلیدهای لمسی رو می‌شه از راه دور هم کنترل کرد. یه نوع دیگه، کلید فوتوالکتریکه که با استفاده از حسگر، کم شدن نور محیط یا تاریک شدن هوا رو تشخیص می‌ده و به‌صورت هوشمند، چراغ‌ها رو روشن می‌کنه. کلید برق حساس به صدا یا حساس به حرکت و کلید و پریز کارتی، از انواع دیگه‌ی کلیدها و پریزها هستن.\n'
                      'اگه باوجود تمام این کلیدها و پریزهایی که اسم بردیم، گیج شدین و اصلا نمی‌دونین کدوم برای ساختمونتون بهتره، نگران نباشین. کارشناس‌های بسپارش به ما علاوه‌بر مشاوره و راهنمایی شما، توی نصب و تعویض انواع کلید و پریز مهارت کافی دارن و می‌تونن بهترین خدمات رو بهتون ارائه بدن.',
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
                            'بسپارش به ما برای کلید و پریز چه خدماتی ارائه می‌ده؟',
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
