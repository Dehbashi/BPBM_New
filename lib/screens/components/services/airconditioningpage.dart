import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:bpbm2/screens/components/faq.dart';
import 'package:bpbm2/screens/components/header.dart';

List<FAQItem> faqList = [
  FAQItem(
    question: 'بسپارش به ما برای تعمیر هواکش های خانگی هم خدمات ارائه می کنه؟',
    answer:
        'عموما بهتره که هواکش‌های خونگی در صورت خرابی، تعویض بشن اما براساس نظر کارشناس، ممکنه بشه با یه تعمیر یا تمیزکاری جزئی، هواکش رو دوباره راه انداخت.',
  ),
  FAQItem(
    question:
        'امکانش هست کارشناس قبل از حضور در محل، هواکش رو تهیه کنه یا خودم باید هواکش رو تهیه کنم؟',
    answer:
        'بله کارشناس بسپارش به ما این امکان رو داره که قبل از حاضر شدن در محل، با هماهنگی شما و نیاز و کاربردتون، هواکش رو تهیه کنه.',
  ),
  FAQItem(
    question: 'تأمین وسایل جانبی مورد نیاز برای نصب یا تعویض هواکش با خودمه؟',
    answer:
        'نه لازم نیست شما هیچ وسیله‌ای تهیه کنین. براساس درخواست و نوع خدماتی که توی بسپارش به ما ثبت کردین، کارشناس متخصص تمام وسایل مورد نیاز برای انجام کار رو همراه خودش میاره. اگر هم حین انجام کار متوجه بشه که نیاز به وسیله یا قطعه‌ی دیگه‌ای داره، با هماهنگی شما و پشتیبانی بسپارش به ما، برای تهیه اون‌ها اقدام می‌کنه.',
  ),
  FAQItem(
    question:
        'چه زمان هایی می تونم برای خدمات هواکش توی بسپارش به ما درخواست بدم؟',
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
        'توی کدوم از مناطق می تونم از خدمات هواکش بسپارش به ما استفاده کنم؟',
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

class AirConditioningPage extends StatefulWidget {
  @override
  State<AirConditioningPage> createState() => _AirConditioningPageState();
}

final Map<Image, String> antennaimages = {
  Image.asset('assets/icons/antennaicons/troubleshooting.png'):
      'سیم‌کشی و نصب انواع هواکش‌های خانگی',
  Image.asset('assets/icons/antennaicons/help.png'):
      'تعویض انواع هواکش‌های خانگی',
};

class _AirConditioningPageState extends State<AirConditioningPage> {
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
                        'آشنایی با سرویس نصب هواکش',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/services/airconditioning.png',
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
                      'برای نصب، تعمیر و تعویض هواکش خونه و محل کارت، کارشناس‌های بسپارش به ما رو صدا کن.',
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
                            'هواکش چیه و چطوری کار می‌کنه؟',
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
                      'هواکش یه نوع سیستم تهویه‌ی هواست که وظیفه‌ی برقرار کردن جریان هوا از محیط بیرون به داخل یک محیط بسته رو به‌عهده داره. هواکش توی خونه‌ها و محیط‌های اداری نقش حیاتی داره. توی فضاهای بسته‌ای مثل سرویس بهداشتی، حمام، آشپزخونه و فضاهایی که پنجره یا روزنه‌ای به بیرون ندارن، بدون وجود هواکش، هیچ راهی برای خروج هوای کهنه و آلوده وجود نداره و اون محیط دیگه برای افراد کاملا بدون استفاده و حتی خطرناک می‌شه.\n'
                      'هواکش‌ها به دو دسته‌ی هواکش‌های خونگی و هواکش‌های صنعتی تقسیم می‌شن. هواکش‌های خونگی قدرت مکندگی هوای کمتری دارن و نمی‌شه اون‌ها رو توی محیط‌های بزرگ به‌کار برد. از اون‌طرف هواکش‌های صنعتی خیلی قدرتمند هستن و می‌تونن هوای آلوده توی سوله‌های بزرگ و فضاهای صنعتی رو به راحتی خارج کنن. برای انتخاب هواکش مناسب برای یک محیط خاص، باید به مشخصات هواکش توجه بشه و متناسب با کاربرد، بهترین هواکش به کار بره.\n'
                      'هواکش در قلب خودش از الکتروموتور استفاده می‌کنه. الکتروموتور هواکش هم مثل بقیه‌ی الکتروموتورها، با سیم‌پیچی و ایجاد میدان مغناطیسی، جریان الکتریکی تولید می‌کنه تا موتور کار کنه و پره‌های فن رو به حرکت دربیاره. بنابراین اگر سیم‌کشی دستگاه به مشکل بربخوره، کار کل هواکش مختل می‌شه. مثلا ممکنه موتور زیاد گرم بشه، عایق سیم‌پیچی‌ها ذوب بشن یا اتصال کوتاه ایجاد بشه.\n'
                      'مثلا اندازه‌ی هواکش باید براساس محیطی که داره توش نصب می‌شه تعیین بشه. اگر هواکش برای محیط کوچیک باشه، هم فشار زیادی به موتورش وارد می‌شه و هم به‌هیچ‌وجه نمی‌تونه کارایی لازم رو داشته باشه. بزرگ بودن هواکش هم باعث هدر رفتن برق می‌شه و هم خطر ایجاد جریان هوای معکوس و برگشتن هوای آلوده به داخل محیط وجود داره. اندازه‌ی قطر دهنه‌ی هواکش هم موضوع مهمیه که باید مورد توجه قرار بگیره. مسیر خروجی هوا توی هواکش یه لوله‌ی کوچیک و انعطاف‌پذیره که اگر درست وصل نشه احتمال زیادی وجود داره که هوای آلوده به داخل برگرده و برای همین خیلی مهمه که محل اتصال به لوله کاملا محکم بشه و لوله به صورت اصولی به قسمت‌های اصلی هواکش وصل بشه.',
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
                            'بسپارش به ما برای هواکش چه خدماتی ارائه می‌کنه؟',
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
