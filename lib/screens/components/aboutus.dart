import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/drawerpage.dart';
import 'package:bpbm2/screens/components/header.dart';

class AboutUs extends StatelessWidget {
  final double textpadding = 12;
  final double headingpadding = 12;
  final double imageradius = 15;
  final double linespacing = 2.2;
  final double textsize = 16;
  final double headingsize = 24;
  final double bottomiconsize = 75;

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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(imageradius),
                              child: Image.asset(
                                'assets/images/aboutus1.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 260,
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Text(
                                    'بسپارش به ما چیکار میکنه؟',
                                    style: TextStyle(
                                      fontSize: headingsize,
                                      color: Color(0xFF037E85),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'iransans',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: textpadding),
                              child: Text(
                                'این روزها که خیلی‌هامون سرمون شلوغه و وقت نداریم برای خدمات مختلف، دنبال متخصص حرفه‌ای و قابل اعتماد بگردیم، نیاز به یه پلتفرم مطمئن داریم که بتونیم توی هر زمان و هر مکانی، خدمات مورد نیازمون رو به شکل حرفه‌ای دریافت کنیم. بسپارش به ما یه پلتفرم جامعه که برای خدمات تخصصی برق ساختمان کنار شما حضور داره. مجموعه‌ی ما به عنوان رابط بین شما و کارشناس‌های متخصص عمل می‌کنه و بهترین نیروها رو برای خدمات مورد نیاز شما در نظر می‌گیره.\n'
                                'در بسپارش به ما چه خدماتی ارائه می‌شه؟\n'
                                'بسپارش به ما یه پلتفرم جامع برای خدمات آنلاین برق ساختمانه و خدمات در محل رو با بالاترین کیفیت به شما کاربرای عزیز ارائه می‌ده. خدمات ما شامل عیب‌یابی، نصب، تعمیر و راه‌اندازی کولر، آیفون‌های صوتی – تصویری و کدینگ، دوربین مدار بسته، تلفن و سانترال، اعلام حریق، سیستم ارت، چراغ و سنسور، برق اضطراری، محافظ ساختمان، آنتن معمولی و مرکزی، کلید پریز و جعبه فیوز می‌شه. یعنی همون‌طور که از اسممون می‌شه حدس زد، شما می‌تونی تمام خدمات برق‌کاری خونه، محل کار یا هر مکانی که مدنظر داری رو بسپاریش به ما.',
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
                            SizedBox(height: 16),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(imageradius),
                              child: Image.asset(
                                'assets/images/aboutus2.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 280,
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'در بسپارش به ما چه خدماتی ارائه میشه؟',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: headingsize,
                                        color: Color(0xFF037E85),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'iransans',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: textpadding),
                              child: Text(
                                'بسپارش به ما یه پلتفرم جامع برای خدمات آنلاین برق ساختمانه و خدمات در محل رو با بالاترین کیفیت به شما کاربرای عزیز ارائه می‌ده. خدمات ما شامل :\n'
                                'عیب‌یاب برق ساختمان و افت ولتاژ\n'
                                'نصب و تعمیر و راه‌اندازی کولر\n'
                                ' خدمات آیفون‌های صوتی تصویری و کدینگ\n'
                                'اعلام حریق\n'
                                'چراغ و سنسور\n'
                                'برق اضطراری\n'
                                ' محافظ ساختمان\n'
                                'نصب آنتن معمولی و مرکزی\n'
                                ' نصب و تعویض \n'
                                'کلید پریز و جعبه فیوز\n'
                                'دوربین مدار بسته\n'
                                'تلفن و سانترال\n'
                                'سیستم ارت\n'
                                'و...\n'
                                ' می‌شه. یعنی همون‌طور که از اسممون می‌شه حدس زد، شما می‌تونی تمام خدمات برق‌کاری خونه، محل کار یا هر مکانی که مدنظر داری رو بسپاریش به ما.',
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
                            SizedBox(height: 60),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'چرا بسپارش به ما؟',
                                    style: TextStyle(
                                      fontSize: headingsize,
                                      color: Color(0xFF025459),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'iransans',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 50),
                            Image.asset(
                              'assets/icons/guarantee.png',
                              width: bottomiconsize,
                              height: bottomiconsize,
                              color: Color(0xFF037E85),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'تضمین و گارانتی خدمات کالا',
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
                            SizedBox(height: 15),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: textpadding),
                              child: Text(
                                'ما هم برای کیفیت خدماتمون تضمین می‌دیم و هم در مورد قطعات و وسایلی که کارشناس‌هامون استفاده می‌کنن. یعنی با خیال راحت نه فقط خودِ کار، بلکه بعدش رو هم بسپارینش به ما. در ضمن این رو هم بگیم که بسپارش به ما هوای مشتری‌های وفادارش رو هم داره و انواع کد تخفیف و پروموشن‌ها رو براشون در نظر می‌گیره.',
                                style: TextStyle(
                                  color: Color(0xFF025459),
                                  fontFamily: 'iransans',
                                  height: 1.5,
                                  fontSize: textsize,
                                ),
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            SizedBox(height: 50),
                            Image.asset(
                              'assets/icons/speech.png',
                              width: bottomiconsize,
                              height: bottomiconsize,
                              color: Color(0xFF037E85),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'مشخص شدن قیمت نهایی با چند کلیک',
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
                            SizedBox(height: 15),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: textpadding),
                              child: Text(
                                'میدونی فرق ما با بقیه چیه؟! وقتی که می‌خوای سفارشت رو ثبت کنی، با سوالاتی که در مورد خدمات مورد نظر ازت می‌پرسیم، قیمت نهایی کار رو برآورد و بهت اعلام می‌کنیم. با این روش از همون اول می‌دونی که قراره چقدر هزینه کنی و دیگه از این بابت خیالت راحته.',
                                style: TextStyle(
                                  color: Color(0xFF025459),
                                  fontFamily: 'iransans',
                                  height: 1.5,
                                  fontSize: textsize,
                                ),
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            SizedBox(height: 50),
                            Image.asset(
                              'assets/icons/support.png',
                              width: bottomiconsize,
                              height: bottomiconsize,
                              color: Color(0xFF037E85),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'مشاوره و پشتیبانی تلفنی',
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
                            SizedBox(height: 15),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: textpadding),
                              child: Text(
                                'ما از زمان ثبت سفارش تا وقتی که کارشناس کار رو بهتون تحویل بده، ممکنه سوالی براتون پیش بیاد یا نیاز به راهنمایی داشته باشین. اینجاست که بخش پشتیبانی ما وارد عمل می‌شه، فقط کافیه از راه‌های ارتباطی مختلف مثل تلفن یا پیامک با ما تماس بگیرین.',
                                style: TextStyle(
                                  color: Color(0xFF025459),
                                  fontFamily: 'iransans',
                                  height: 1.5,
                                  fontSize: textsize,
                                ),
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            SizedBox(height: 50),
                            Image.asset(
                              'assets/icons/place.png',
                              width: bottomiconsize,
                              height: bottomiconsize,
                              color: Color(0xFF037E85),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'انتخاب زمان و مکان با شما',
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
                            SizedBox(height: 15),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: textpadding),
                              child: Text(
                                'وسایل برقی توی هر روز و هر ساعتی ممکنه از کار بیفتن یا خراب بشن! کارشناس‌های ما هم می‌تونن هروقت که شما به مشکل برخوردین در محل شما حاضر بشن و مشکلتون رو حل کنن. حتی توی روزهای تعطیل و آخر هفته‌ها هم می‌تونین روی کمک ما حساب کنین.',
                                style: TextStyle(
                                  color: Color(0xFF025459),
                                  fontFamily: 'iransans',
                                  height: 1.5,
                                  fontSize: textsize,
                                ),
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            SizedBox(height: 50),
                            Image.asset(
                              'assets/icons/technician.png',
                              width: bottomiconsize,
                              height: bottomiconsize,
                              color: Color(0xFF037E85),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'کارشناس‌های بااخلاق و حرفه‌ای',
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
                            SizedBox(height: 15),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: textpadding),
                              child: Text(
                                'ما برای استخدام کارشناس‌هامون، اون‌ها رو از فیلترهای مختلفی رد می‌کنیم تا مطمئن باشیم که هم از نظر اخلاقی بهترین هستن و هم از نظر حرفه‌ای. برای اینکه بتونیم توی اون زمانی که مهمون شما هستیم بهترین خدمات رو ارائه بدیم، ازتون می‌خوایم که بعد از حضور کارشناس و انجام شدن کار، در مورد کیفیت کار و برخورد کارشناس به سوال‌های نظرسنجی ما پاسخ بدین و برای اینکه بتونیم رضایت شما رو جلب کنیم، بهمون کمک کنین.',
                                style: TextStyle(
                                  color: Color(0xFF025459),
                                  fontFamily: 'iransans',
                                  height: 1.5,
                                  fontSize: textsize,
                                ),
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
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
