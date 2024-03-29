import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';
import 'package:bpbm2/screens/components/header.dart';

List<FAQItem> faqList = [
  FAQItem(
    question: 'کارشناس بسپارش به ما می تونه پایه تلویزیون رو خودش تهیه کنه؟',
    answer:
        'بله، کارشناس می‌تونه با هماهنگی شما و گرفتن اطلاعات در مورد مشخصات تلویزیونتون، پایه‌ی دیواری رو براتون تهیه کنه.',
  ),
  FAQItem(
    question:
        'تأمین وسایل جانبی مورد نیاز برای نصب پایه دیواری تلویزیون با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات نصب تلویزیون دیواری توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات نصب تلویزیون دیواری بسپارش به ما استفاده کنم؟',
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

class WallTvPage extends StatefulWidget {
  @override
  State<WallTvPage> createState() => _WallTvPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'نصب انواع پایه‌ی دیواری برای تلویزیون‌ها',
  Image.asset('assets/icons/antennaicons/help.png'):
      'جابه‌جایی محل انواع پایه‌های دیواری تلویزیون',
};

class _WallTvPageState extends State<WallTvPage> {
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
                        'آشنایی با سرویس نصب تلویزیون',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/services/walltv.png',
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
                      'نصب تلویزیون دیواری رو بسپارش به ما\n'
                      'اگه برای نصب تلویزیون روی دیوار نیاز به کمک داری، بسپارش به ما رو خبر کن.\n'
                      'برای جابه‌جایی پایه‌ی دیواری تلویزیون کارشناس‌های بسپارش به ما می‌تونن بهت کمک کنن.',
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
                            'پایه‌ی دیواری برای تلویزیون بهتره یا پایه‌ی زمینی؟',
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
                      'اینکه پایه‌ی دیواری برای تلویزیون شما بهتره یا پایه‌ی زمینی، کاملا به محیطی که می‌خواین توش تلویزیون رو قرار بدین، کاربری‌تون و البته سلیقه‌ی خودتون بستگی داره. پایه‌های دیواری می‌تونن مزایای خاص خودشون رو نسبت به پایه‌های زمینی داشته باشن و تجربه‌ی شما از تلویزیون دیدن رو لذت‌بخش‌تر کنن. مثلا اگه فضاتون کوچیکه و نمی‌تونین برای تلویزیون، میز درنظر بگیرین بهترین کاری که می‌تونین بکنین استفاده از پایه‌ی دیواری برای تلویزیونه.\n'
                      'خوبی پایه‌های دیواری اینه که انواع مختلفی دارن و بسته به نیازتون می‌تونین کاربردی‌ترینش رو برای خودتون انتخاب کنین: پایه‌ی دیواری ثابت و پایه‌ی دیواری متحرک دو نوع از پایه‌های پرکاربرد هستن. پایه دیواری ثابت، متداول‌ترین نوع پایه‌ی دیواریه که تلویزیون رو روی دیوار ثابت نگه می‌داره. پایه‌ی ثابت از دو بخش تشکیل شده، یک بخش که به دیوار ثابت می‌شه و دو بازو که به این قسمت ثابت وصل می‌شن و تلویزیون رو روی خودشون نگه می‌دارن. این بازوها هرکدوم یه پیچ چرخان دارن که بهتون امکان تغییر زاویه‌ی صفحه‌ی تلویزیون به سمت بالا یا پایین رو می‌دن. بعلاوه بازوها با سوراخ‌هایی که روشون تعبیه شده بهتون اجازه می‌دن که ارتفاع تلویزیون رو هم توی یه محدوده‌ای بالا و پایین ببرین.\n'
                      'با پایه‌های دیواری متحرک، می‌تونین تلویزیون رو توی جهت‌های مختلفی حرکت بدین. مثلا تغییر زاویه‌ی بالا و پایین (Tilt)، چپ و راست (Swivel)، تغییر جهت به صورت گردشی (Rotate) و جلو و عقب بردن تلویزیون کارهاییه که باوجود پایه‌ی متحرک می‌تونین انجام بدین.\n'
                      'برای نصب پایه‌ی دیواری باید به نوع دیوار و وزن تلویزیون هم توجه بشه. مثلا اگه دیوار از نوع کاذبه، توصیه می‌شه که به‌هیچ‌وجه از پایه‌های دیواری استفاده نشه و در صورتی که نمی‌خواین یا نمی‌تونین تلویزیون رو روی زمین بذارین، حتما از پایه‌های سقفی استفاده کنین. در صورتی که تلویزیونتون بزرگه و وزنش زیاده، بهتره که حتما به جنس پایه‌ی دیواری توجه داشته باشین. پایه‌ها می‌تونن استیل، فلزی یا آهنی باشن که باید با توجه به وزن تلویزیون، مناسب‌ترینش انتخاب بشه.\n'
                      'موقع نصب پایه‌ی دیواری برای تلویزیون، نصاب تمام این موارد رو بررسی می‌کنه و براساسشون تصمیم می‌گیره که چه نوع پایه‌ای برای تلویزیون شما بهتره.',
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
                            'بسپارش به ما برای نصب تلویزیون دیواری چه خدماتی ارائه می‌کنه؟',
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
