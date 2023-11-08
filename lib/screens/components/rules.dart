import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';
import 'package:bpbm2/screens/components/privacy.dart';

class Rules extends StatelessWidget {
  final double textpadding = 12;
  final double headingpadding = 20;
  final double imageradius = 10;
  final double linespacing = 2.2;
  final double textsize = 16;
  final double headingsize = 24;

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
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo.png',
            width: 121,
            height: 68,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu, color: Colors.grey),
              onPressed: () {
                //opendrawer
              },
            )
          ],
        ),
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
                                'assets/images/knowtherules.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 200,
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.security,
                                    size: 40,
                                    color: Color(0xFF04A8B2),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'قوانین و مقررات',
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
                                'کاربر گرامی، در سند پیش‌رو، شرایط خدمات و سیاست‌های حریم شخصی سرویس “بسپارش به ما” تشریح شده است. تمامی خدمات ارائه‌شده در مجموعه‌ی “بسپارش به ما” تابع قوانین مطروح در این بخش است، بنابراین توصیه می‌کنیم پیش از استفاده از خدمات “بسپارش به ما”، این بخش را با دقت مطالعه کنید. ثبت‌نام در مجموعه‌ی “بسپارش به ما” به معنای پذیرش شرایط زیر و قبول کلیه‌ی قوانین از طرف شما کاربر گرامی تلقی خواهد شد.\nطرفین با استناد به ماده 10 قانون مدنی که مقرر می دارد:"قراردادهای خصوصی نسبت به کسانی که آن را منعقد نموده اند در صورتی که مخالف صریح قانون نباشد نافذ است" و ماده 219 قانون مدنی که بیان می دارد" عقودی که بر طبق قانون واقع شده باشد بین متعاملین و قائم مقام آنها لازم الاتباع است مگر اینکه به رضای طرفین قاله یا به علت قانونی فسخ شود" ملزم و متعهد به اجرای کلیه مفاد آن می باشند.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
                                  fontFamily: 'iransans',
                                  height: linespacing,
                                  fontSize: textsize,
                                ),
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Text(
                                    'قواعد عمومی',
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(imageradius),
                              child: Image.asset(
                                'assets/images/knowtherules2.png',
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
                                    'ماده ۱: تعاریف و اصطلاحات',
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
                                'در قرارداد بین کاربر حقیقی یا حقوقی و “بسپارش به ما”، الفاظ زیر دارای معانی مشروح هستند:\n'
                                '۱-۱ “بسپارش به ما”: مجموعه نرم‌افزارهای “بسپارش به ما” شامل وبسایت و اپلیکیشن “بسپارش به ما” در سیستم عامل‌های اندروید و iOS.\n'
                                '۱-۲ کاربر: هر شخص حقیقی یا حقوقی که به‌عنوان کارشناس یا مشتری در مجموعه‌ی “بسپارش به ما” ثبت‌نام کند.\n'
                                '۱-۳ مشتری: کاربری که متقاضی خدمات “بسپارش به ما” است.\n'
                                '۱-۴ کارشناس: کاربری که به‌عنوان کارشناس متخصص در “بسپارش به ما” ثبت‌نام کرده و پس از طی مراحل مصاحبه، به‌طور رسمی همکاری خود را با “بسپارش به ما” آغاز کرده‌باشد.\n'
                                '۱-۵ سرویس: هرگونه خدمتی که توسط کارشناس متخصص به مشتری ارائه شود.\n'
                                '۱-۶ خدمات “بسپارش به ما”: خدماتی که “بسپارش به ما” در روند ارتباط مشتری و کارشناس متخصص ارائه می‌دهد.\n'
                                '۱-۷ حساب کاربری: شامل صفحه‌ی شخصی، نام کاربری، سابقه‌ی فعالیت و سفارش‌ها یا خدمات کاربر، که پس از ثبت‌نام در وبسایت یا اپلیکیشن “بسپارش به ما” در اختیار کاربر قرار می‌گیرد.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
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
                                'assets/images/services.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 440,
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
                                    'ماده ۲: خدمات و سرویس ها',
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
                                '۲-۱ “بسپارش به ما” مستقیما هیچ سرویسی ارائه نمی‌کند و تنها به عنوان پل ارتباطی بین مشتری و کارشناس متخصصان به‌منظور تسهیل در ارائه و دریافت سرویس و هچنین نظارت بر کیفیت خدمات ارائه شده توسط کارشناس متخصص عمل خواهد کرد. کارشناس متخصص بین پذیرش درخواست خدمات یا رد آن مخیر است و مشتری نیز پس از ارسال درخواست خدمت و مشخص‌شدن کارشناس متخصص می‌تواند از درخواست خود انصراف دهد. بنابراین، هر سفارشی که از طریق مجموعه‌ی “بسپارش به ما” انجام می‌شود یک قرارداد مستقل بین کارشناس متخصص و مشتری بوده و خدمات “بسپارش به ما” تنها واسطه ای جهت زمینه‌سازی انعقاد این قرارداد دوطرفه بین مشتری و کارشناس متخصص خواهد بود.\n'
                                '۲-۲ “بسپارش به ما” با پیگیری‌های مداوم و نظارت کامل بر نظرات مشتریان در خصوص خدمات ارائه‌شده، سعی دارد بستری شفاف برای ارائه خدمات فراهم کند و روند ثبت سفارش را تسهیل کرده و سرعت ببخشد. بااین‌حال، باید در نظر داشت که باتوجه به نسبی‌بودن مفهوم کیفیت و مجزا‌ بودن قرارداد مشتری با کارشناس متخصص از توافقات “بسپارش به ما” با کاربران، “بسپارش به ما” هیچ‌گونه مسئولیتی _اعم از حقوقی و کیفری_ در قبال نوع و میزان کیفیت سرویس ارائه‌شده و و هرگونه وقایع و مشکلات احتمالی آتی آن، در مقابل کاربران و اشخاص ثالث نخواهد‌داشت. اشخاص ثالث و کاربران نیز به این امر واقف می باشند.\n'
                                '۲-۳ خدمات “بسپارش به ما” شامل قیمت‌دهی لحظه‌ای، سفارش‌گذاری و پیشنهاد بهترین کارشناس متخصص خواهد بود.\n'
                                '۲-۴ “بسپارش به ما” همواره در تلاش است تا خدمات خود را بهبود دهد و رضایت کاربران اعم از مشتری یا کارشناس متخصص را به بهترین نحو جلب کند. در این راه، ممکن است ویژگی‌ها یا عملکردهایی را اضافه یا حذف کند یا محدودیت‌ها را کاهش یا افزایش دهد. همچنین ممکن است یکی از سرویس‌ها را به‌طور کامل متوقف کند یا به حالت تعلیق درآورد. بنابراین استفاده‌ی کاربر از خدمات “بسپارش به ما” و همچنین کارشناس متخصص به معنای پذیرش تغییرات به‌وجود آمده در خدمات و سرویس‌ها خواهد بود.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
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
                                'assets/images/financialaffairs.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 650,
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
                                    'ماده ۳: امور مالی',
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
                                '۳-۱ مسئولیت تهیه اجناس، قطعات مورد نیاز و لوازم یدکی به عهده مشتری است و پشتیبانی “بسپارش به ما” هیچ مسئولیتی در قبال پیگیری موارد مربوط به اجناس، قطعات و لوازم‌ یدکی ندارد. در صورت توافق مشتری و کارشناس متخصص برای خریداری این موارد توسط کارشناس متخصص، مشتری باید هزینه آن را قبل از خرید به کارشناس متخصص پرداخت کند. لذا هرگونه توافق در این خصوص بین کارشناس متخصص ومشتری، هیچگونه مسیولیتی اعم از حقوقی و کیفری برای “بسپارش به ما” ایجاد نکرده و طرفین نیز به این امر واقف می باشند.\n'
                                '۳-۲ دانلود، نصب و ثبت‌نام در نرم‌افزارهای “بسپارش به ما” رایگان است و هزینه‌ای بابت عضویت از مشتری دریافت نمی‌شود. بدیهی است فراهم‌آوردن ملزومات استفاده از خدمات “بسپارش به ما” شامل اینترنت مورد نیاز و سیستم­‌های الکترونیکی هوشمند تماماً به‌عهده‌ی کاربر خواهدبود.\n'
                                '۳-۳ محاسبه‌ی هزینه بر اساس فهرست­ بهای توافق‌شده‌ی مشتری و کارشناس متخصص خواهدبود. بدین معنا که سفارش مشتری همراه با فهرست­ بهای قیمت­‌های پیشنهادی “بسپارش به ما” که براساس عرف بازار محاسبه شده‌است، برای کارشناس متخصص ارسال می‌گردد. در این حالت، مشتری و کارشناس متخصص، حق هرگونه اعمال تغییر و اعتراض در این خصوص، ولو به استناد خیارات را از خود سلب و اسقاط می‌‌نمایند. لازم به ذکر است، قطعی‌بودن قیمت‌ها منوط به نهایی‌شدن سفارش و انتخاب کارشناس متخصص موردنظر در نرم‌افزار “بسپارش به ما” است. درصورتی‌که مراحل سفارش طی‌شده اما نهایی‌کردن آن معلق بماند سفارش قابل‌انجام و پیگیری نخواهدبود.\n'
                                '۳-۴ پس از انجام هر سرویس کارشناس متخصص ملزم به تنظیم فاکتور براساس فهرست بهای توافق‌شده در سفارش می‌باشد. لذا مشتری تنها موظف به پرداخت اجرت فاکتورشده بوده و کلیه‌ی پرداخت‌های خارج از چهارچوب فاکتور از جمله انعام و غیره اختیاری بوده و از حمایت “بسپارش به ما” خارج است. لازم به ذکر است هزینه‌ی کالاهای مصرفی خریداری‌شده برای ارائه‌ی سرویس توسط کارشناس متخصص، باید به‌طور جداگانه و مطابق با فاکتور پرداخت گردد.\n'
                                '۳-۵ در صورت اشتباه مشتری در ارائه‌ی اطلاعات هنگام سفارش‌گذاری، کارشناس متخصص می‌پذیرد که قبل از انجام خدمت ابتدا این موضوع را به مشتری متذکر گردد و از درخواست مابه‌التفاوت جداگانه از مشتری بدون هماهنگی جداً خودداری نماید. در این حالت، هریک از مشتری و کارشناس متخصص قادر به رد درخواست بوده و در این حالت مشتری تنها موظف به پرداخت هزینه‌ی ایاب‌وذهاب خواهدبود.\n'
                                '۳-۶ در صورتی که مشتری به هر دلیلی درخواست سرویس را تا سی دقیقه پیش از زمان تعیین شده برای حضور کارشناس در محل لغو کند، وجه واریزی او حداکثر تا ۴۸ ساعت کاری از زمان لغو سرویس، به حساب مشتری بازگشت داده خواهد شد.\n'
                                'تبصره: اگر کارشناس متخصص بدون هماهنگی با “بسپارش به ما” یا مشتری اقدام به ارائه‌ی سرویس با هزینه‌ی بالاتر نماید، اماره بر رضایت وی بر توافق سابق داشته، حق دریافت هرگونه مابه‌التفاوت را از خود سلب می‌نماید و صرفا موظف است مبلغ توافق شده طبق فاکتور ر دریافت نماید و در صورت کشف این امر، “بسپارش به ما” مخیر به قطع همکاری با کارشناس متخصص خاطی می باشد.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
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
                                'assets/images/intellectualproperty.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 650,
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
                                    'ماده ۴: مالکیت معنوی',
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
                                '۴-۱ کلیه‌ی حقوق معنوی نرم‌افزارهای “بسپارش به ما”، موارد وابسته به آن و هرآنچه بدان ملحق می‌گردد، مانند نام، علامت تجاری، خدمات ارائه‌شده‌ی تحت این نام و سایر موارد ازجمله مالکیت فکری و معنوی آن متعلق به شرکت لیان الکتریک ویرا بوده و هرگونه سوءاستفاده از هریک از موارد فوق قابلیت پیگیری قانونی خواهدداشت. لذا کاربران در همه‌حال متعهد به رعایت حقوق معنوی شرکت لیان الکتریک ویرا نسبت به نرم‌افزارها و ملحقات “بسپارش به ما” بوده، تنها مجاز به استفاده‌ی محدود، غیرانحصاری و غیرقابل‌انتقال از خدمات “بسپارش به ما” هستند، بدون آنکه این استفاده حقی برای آن‌ها نسبت به مالکیت نرم‌افزارهای “بسپارش به ما” یا سایر حقوق معنوی مربوطه ایجاد نماید یا اجازه‌ی استفاده از نام، علامت تجاری، لوگو و... را به آن‌ها اعطا نماید.\n'
                                '۴-۲ کاربران نمی‌‌توانند نرم‌افزارهای “بسپارش به ما” را تغییردهند و یا آن را بازتولید، مشابه‌سازی یا بازنویسی کنند یا از جزء یا کل آن برای تولید یک برنامه‌ی مشابه یا غیرمشابه استفاده نمایند. “بسپارش به ما” مجاز به پیگیری‌های قانونی و برخورد با شخص خاطی خواهدبود.\n'
                                '۴-۳ دانلود نرم‌افزارهای “بسپارش به ما” رایگان است. لذا هیچ شخص حقیقی یا حقوقی حق اجاره، فروش و به‌طور کلی انتقال نرم‌افزارهای “بسپارش به ما” و حقوق ناشی از آن یا نمایش عمومی آن را نخواهدداشت. کاربران می‌توانند هرگونه اقدام خلاف این بند را به “بسپارش به ما” گزارش نموده تا در اسرع وقت با متخلف برخورد قانونی صورت گیرد. لازم به ذکر است خسارات ناشی از این تخلف به‌عهده‌ی شخص خاطی خواهدبود و “بسپارش به ما” در این خصوص مسئولیتی نخواهدداشت.\n'
                                '۴-۴ اقدام کاربر برای دسترسی به هریک از سرویس‌‌ها و برنامه‌ها و شبکه‌ها‌ی مرتبط با سرورها، همچنین استفاده از مهندسی معکوس یا مترجم وارون برای دسترسی به کد سطح بالا یا زبان ماشین یا تلاش در راستای آن غیرمجاز بوده و تخلف محسوب می‌گردد و “بسپارش به ما” مجاز به پیگیری‌های قانونی و برخورد با شخص خاطی خواهدبود.\n'
                                '۴-۵ تمامی متن‌ها، طرح‌های گرافیکی و کدهای به‌کارگرفته‌شده در “بسپارش به ما” جزو اموال“بسپارش به ما” محسوب شده و استفاده از هرگونه کرالر (Crawler) یا ابزار مشابه برای مرور یا کپی خودکار صفحات و اطلاعات “بسپارش به ما” توسط کاربران و یا هر شخص حقیقی و حقوقی غیر کاربر ممنوع بوده، “بسپارش به ما” مجاز به جلوگیری از این اقدام و برخورد قانونی در این خصوص خواهدبود.\n'
                                '۴-۶ کپی‌برداری از اطلاعات کارشناس متخصصین و یا مشتریان، محتوی، طراحی و تصاویر به‌کاررفته در نرم‌افزارهای “بسپارش به ما”، به شکل دستی و یا خودکار، ممنوع می‌باشد.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
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
                                'assets/images/termsofuse.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 250,
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
                                      'ماده ۵: شرایط استفاده کاربران از "بسپارش به ما"',
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
                                '۵-۱ کاربر باید دارای اهلیت باشد. لذا داشتن حداقل ۱۸ سال تمام شمسی کاربر، به عنوان اماره قانونی، برای استفاده از “بسپارش به ما” شرط است.\n'
                                '۵-۲ در کلیه‌ی مراحل استفاده از “بسپارش به ما”، کاربران موظف به رعایت قوانین جمهوری اسلامی ایران هستند.\n'
                                '۵-۳ کاربر با ثبت نام و استفاده از خدمات “بسپارش به ما” می‌پذیرد تمامی تغییرات، الحاقات و اصلاحاتی را که توسط“بسپارش به ما” در وبسایت “بسپارش به ما” به‌روزرسانی می‌گردد و یا از طریق پیامک، ایمیل، نرم‌افزارهای “بسپارش به ما” یا هر شیوه‌ی متعارف دیگر در خصوص استفاده از خدمات “بسپارش به ما” و شرایط آن ارسال‌‌ می‌گردد، مطالعه نماید. لذا هرگونه استفاده از “بسپارش به ما” به منزله‌ی اطلاع کامل و موافقت با موارد مذکور خواهدبود.\n'
                                '۵-۴ کاربر می‌‌پذیرد که قرارداد حاضر یک قرارداد قابل رجوع و جایز از سوی “بسپارش به ما” است و “بسپارش به ما” می‌‌تواند هر زمان تنها به صلاحدید خود و بدون دلیل، یک حساب کاربری را مسدود کند و مانع استفاده‌ی کاربر از خدمات “بسپارش به ما” گردد. کاربرنیز حق هیچگونه اعتراضی در این خصوص نخواهد داشت.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
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
                                'assets/images/profile.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 300,
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
                                    'ماده ۶: حساب کاربری',
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
                                '۶-۱ استفاده از مجموعه‌ی “بسپارش به ما” منوط به داشتن حساب کاربری است. هر شخص (اعم از حقیقی و حقوقی) تنها مجاز به افتتاح یک حساب کاربری است. در خصوص اشخاص حقوقی، فرد افتتاح‌کننده‌ی حساب کاربری، باید نماینده‌ قانونی “بسپارش به ما” باشد.\n'
                                '۶-۲ کاربر می‌پذیرد اطلاعات درخواست‌شده توسط “بسپارش به ما” را به‌طور صحیح و دقیق ارائه نماید و در صورت نیاز به تغییر اطلاعات در اسرع وقت نسبت به به‌روز‌رسانی آن‌ها اقدام نماید. مسئولیت عدم تطابق اطلاعات مندرج با واقع و کلیه‌ی عواقب ناشی از آن بر عهده‌ی خود کاربر خواهدبود.\n'
                                '۶-۳ هر کاربر با ثبت‌نام در “بسپارش به ما” و ایجاد حساب کاربری به نام خود صحت انتساب تمام داده پیام‌‌های صادره از حساب کاربری خویش را پذیرفته و در نتیجه حق هرگونه اعتراض یا ادعای آتی (مبنی بر انکار، تردید یا جعل داده‌ پیام‌های ارسالی) را از خویش سلب و اسقاط می‌‌نماید.\n'
                                '۶-۴ مسئولیت تمامی فعالیت‌هایی که از طریق حساب کاربری انجام می‌‌شود مطلقاً به‌عهده‌ی صاحب حساب کاربری است، در نتیجه کاربر مجاز نیست حساب کاربری خود را برای استفاده در اختیار شخص دیگری قرار دهد یا آن را به هر نحو به دیگری منتقل نماید. به‌علاوه ضروری است که در راستای ممانعت از سوءاستفاده‌ی غیر، در حفظ اطلاعات حساب کاربری خود، حداکثر اقدامات لازم را مبذول دارد.در غیر اینصورت مسیولیت هرگونه سواستفاده بر عهده صاحب حساب کاربری می باشد.\n'
                                'تبصره: در صورت ظن به دسترسی اشخاص ثالث به حساب کاربری، کاربر موظف است برای انجام پیگیری‌های بیشتر “بسپارش به ما” را مطلع سازد .در غیر اینصورت مسیولیت هرگونه سواستفاده بر عهده صاحب حساب کاربری می باشد.\n'
                                'تبصره: “بسپارش به ما” هیچ‌گونه مسئولیتی در خصوص عملکرد اشخاص ثالث که ممکن است موجب حدوث نقص یا اشکال و ایرادی در حساب کاربری کاربر گردد، نخواهدداشت.\n'
                                '۶-۵ “بسپارش به ما” مجاز است در صورت صلاحدید پیش از استفاده‌ی کاربر از حساب کاربری برای اطمینان از صحت اطلاعات، کاربران را احراز هویت نماید.\n'
                                '۶-۶ حساب کاربری باید براساس قوانین حاکم، قرارداد حاضر، در راستای اهداف قانونی و در همه‌حال، با درنظرگرفتن حیثیت تجاری مجموعه‌ی “بسپارش به ما” و “بسپارش به ما” به کار گرفته‌شود. لذا کاربر متعهد می‌گردد که تحت هیچ شرایطی مرتکب رفتاری نشود که اعتبار وبسایت و نرم‌افزارهای “بسپارش به ما” را خدشه‌‌دار نماید. مسئولیت هر نوع اقدام کاربر که منجر به بروز خسارات بدنی، جانی یا مالی به خود، “بسپارش به ما” و یا ثالث و در نتیجه حیثیت “بسپارش به ما”، گردد به‌عهده‌‌ی کاربر است و “بسپارش به ما” در این خصوص مسئولیتی نخواهدداشت.\n'
                                'تبصره: در صورت مشاهده‌ی هرگونه تخلف در استفاده از حساب کاربری، اعم از تخطی از مفاد قرارداد حاضر و یا سایر قوانین موضوعه و یا نقض حقوق ثالث، علاوه بر انسداد حساب، کلیه‌ی اعتبار موجود در حساب کاربری وی به‌عنوان وجه التزام توسط “بسپارش به ما” ضبط شده و کاربر حق هرگونه اعتراض را در این خصوص از خود سلب می‌نماید. موارد فوق “بسپارش به ما” را از اقدام به پیگیری‌های قانونی لازم برای مقابله با فرد متخطی محروم نخواهدساخت.\n'
                                '۶-۷ “بسپارش به ما” از طرف کاربر وکالت دارد تا در صورت صلاحدید، حساب‌های کاربری که در مدت طولانی غیرفعال بوده و یا تأیید نشده‌اند را لغو نماید.و کاربر حق هرگونه اعتراضی در این خصوص را ز خود سلب و ساقط می نماید.\n'
                                '۶-۸ در راستای اطلاع‌رسانی اخبار، خدمات و سرویس‌های ویژه از جمله تخفیف‌ها، “بسپارش به ما” اقدام به ارسال ایمیل و یا پیامک برای اعضای “بسپارش به ما” می‌نماید. درصورتی‌که کاربر تمایلی به دریافت این پیام‌ها و یا رایانامه‌ها نداشته باشند قادر به لغو عضویت خبرنامه خواهدبود.\n'
                                'تبصره: باتوجه به اینکه اطلاع‌رسانی در خصوص خدمات از درگاه‌های مذکور صورت می‌پذیرد و در صورت لغو این سرویس‌ها، مسئولیتی متوجه “بسپارش به ما” نیست و کاربر حق اعتراض در این مورد را از خود سلب می‌نماید.\n'
                                '۶-۹ درصورتی‌که کاربر مایل به بستن حساب کاربری خود در “بسپارش به ما” باشد، می‌تواند با تماس با “بسپارش به ما” نسبت به این امر اقدام نماید. در این صورت حساب وی از طرف “بسپارش به ما” مسدود خواهدگردید. لیکن برخی اطلاعات مانند تراکنش‌های مالی سابق به دلایل قانونی قابل‌حذف نیست و در “بسپارش به ما” باقی خواهدماند.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
                                  fontFamily: 'iransans',
                                  height: linespacing,
                                  fontSize: textsize,
                                ),
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            SizedBox(height: 50),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(imageradius),
                              child: Image.asset(
                                'assets/images/discount2.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 350,
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
                                    'ماده ۷: تخفیف',
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
                                '۷-۱ در مواقع خاص “بسپارش به ما” برای رضایت بیشتر و رفاه حال کاربران طرح‌های تشویقی و تخفیف‌های متفاوتی در نظر می‌گیرد. بااین‌وجود ضروری است کاربر شرایط استفاده از هر تخفیف و یا طرح‌های تشویقی را به‌صورت مجزا مطالعه کرده و تاریخ انقضای هر تخفیف را بررسی نماید. در صورت کوتاهی و اشتباه کاربر در استفاده از طرح‌های تخفیفی “بسپارش به ما” مسئول نخواهدبود.\n'
                                '۷-۲ تا زمانی که تخفیف مذکور به طور صحیح و کامل اعمال نشده‌باشد، انقضا و تغییر آن از طرف “بسپارش به ما” ممکن می‌باشد. بسپارش به ما متعهد به حفظ و ادامه تخفیفات نبوده و در صورت صلاحدید می تواند تخفیفات را حذف نماید.\n'
                                '۷-۳ کاربر می‌‌پذیرد که بسته‌های تشویقی اختصاصی، برای استفاده‌ی شخصی وی در نظر گرفته شده و به همین دلیل می‌‌بایست از انتقال و فروش آن‌ها اجتناب نماید. به‌علاوه اعتبار ناشی از بسته‌های تشویقی غیرقابل‌تبدیل به وجه نقد است و از این رو کاربر نمی‌‌تواند وجه معادل بسته‌های تشویقی را از “بسپارش به ما” مطالبه نماید.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
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
                                'assets/images/information.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 240,
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
                                    'ماده ۸: اطلاعات',
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
                                '۸-۱ باتوجه به ماهیت خدمات “بسپارش به ما”، کاربر می‌پذیرد که اطلاعات لازم ازجمله آدرس و شماره‌تماس معتبر و سایر اطلاعاتی را که برای تکمیل ارائه‌ی خدمات ضروری است، با علم به این موضوع که برخی از این اطلاعات در اختیار کارشناس متخصص و یا مشتری مخاطب سفارش قرار خواهدگرفت، با رضایت کامل در اختیار “بسپارش به ما” قرار دهد.\n'
                                '۸-۲ کاربر می‌پذیرد که پس از اتمام خدمت از اطلاعاتی که در نتیجه‌ی استفاده از خدمات “بسپارش به ما” کسب نموده‌است استفاده نکند و از ذخیره‌ی این اطلاعات به هر شکل اجتناب نماید. هرگونه استفاده‌ی مستقیم یا غیرمستقیم از اطلاعات مذکور که از محدوده‌ی اهداف و خدمات “بسپارش به ما” خارج باشد، تخطی محسوب شده و مسئولیت آن تماماً به‌عهده‌ی فرد خاطی خواهد بود و حق پیگیری از طریق پلیس فتا و سایر مراجع قضایی ذی‌صلاح را برای “بسپارش به ما” ایجاد می‌کند.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
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
                                'assets/images/orderplacement.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 250,
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
                                    'ماده ۹: ثبت سفارش',
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
                                '۹-۱ برای استفاده از خدمات “بسپارش به ما”، مشتری باید در وبسایت یا اپلیکشن ثبت‌نام کرده و سفارش خود را نهایی کند. درصورتی‌که نهایی‌شدن سفارش معلق بماند، سفارش به “بسپارش به ما” ابلاغ نشده و “بسپارش به ما” و کارشناس متخصصین قادر به انجام خدمت و سرویس نخواهندبود.و کاربر هیچگونه ادعایی در این خصوص نخواهد داشت.\n'
                                '۹-۲ مشتری موظف است کلیه‌ی اطلاعات خاص، از جمله خرابی بخشی از کالایی که خدمت بر آن صورت می‌پذیرد یا هر توضیحی که ممکن است در تصمیم کارشناس متخصص برای قبول یا رد خدمت تأثیرگذار باشد را در بخش توضیحات ذکر نماید. توافق شفاهی مشتری با کارشناس متخصص به‌هیچ‌وجه قابل‌پیگیری توسط “بسپارش به ما” نخواهدبود.\n'
                                'تبصره: درصورتی‌که مشتری در خصوص بیان این موارد کوتاهی نماید کلیه‌ی خسارات احتمالی از جمله هزینه‌ای که کارشناس متخصص برای کارشناسی متحمل خواهدشد به‌عهده‌ی وی خواهدبود.\n'
                                '۹-۳ پس از توافقات نهایی مشتری موظف است در زمان مقرر در محل بیان‌شده (نشانی‌‌ای که در درخواست سرویس ثبت شده‌است) ‌حضور یابد، در غیر این صورت “بسپارش به ما” مجاز خواهدبود هزینه‌ی ایاب‌وذهاب کارشناس متخصص به اضافه‌ی دویست هزار ریال تا دو میلیون ریال ( مقدار مبلغ بنا به تشخیص بسپارش به ما تعیین خواهد شد) جریمه را از اعتبار وی کسر یا از نام‌برده وصول نماید. وصول این مبلغ، نافی اختیار “بسپارش به ما” برای انسداد حساب کاربری مشتری موصوف نخواهدبود.\n'
                                '۹-۴ مشتری موظف است هزینه‌ی سرویس را به یکی از روش‌های مذکور در و بسایت و اپلیکیشن “بسپارش به ما” و با در نظر گرفتن کلیه‌ی مقرراتی که در بخش مالی و تخفیف آورده شده‌است، پرداخت نماید. در صورت بروز هرگونه مشکل در پرداخت کاربران می‌توانند با پشتیبانی “بسپارش به ما” تماس بگیرند.\n'
                                '۹-۵ درصورت لغو سفارش پس از منقضی‌شدن فرصت لغو، در صورت انجام‌شدن بخشی از سفارش ازجمله ارسال کارشناس متخصص و غیره و یا ایجاد هزینه‌ی فرصت برای کارشناس متخصص مانند رزرو خدمت در زمان اوج سفارشات، هزینه‌ی خدمت انجام‌شده و خسارات مربوط به هزینه‌ی فرصت در حد متعارف در حمایت از کارشناس متخصص از مشتری اخذ خواهدشد. (میزان مبلغ هزینه بنا به تشخیص بسپارش به ما می باشد)\n'
                                'تبصره: لغو سفارش و استرداد هزینه‌ها پس از خدمت‌رسانی ممکن نبوده و مشتری موظف به پرداخت هزینه‌ها می‌باشد.\n'
                                '۹-۶ ثبت سؤال، نظر و یا پیشنهادات مشتریان در خصوص خدمات ارائه‌شده امکان‌پذیر است. لیکن باید در نظر داشت که نظرات مذکور در هر صفحه باید تنها در قالب سؤال و یا نقد و بررسی همان کارشناس متخصص و یا سرویس ارائه‌شده توسط وی باشد. در این باب رعایت کامل ادب و نزاکت، شئونات اسلامی و عرف جامعه الزامی است. لذا “بسپارش به ما” محق است ضمن حفظ محتوای اصلی، کلیه‌ی نظرات غیر مرتبط به خدمات از جمله تبلیغ له یا علیه دیگر کارشناس متخصص‌ها، تبلیغ سایر فعالیت‌ها، اطلاعات و درخواست‌های شخصی و نظراتی که با اخلاق حسنه و شئونات اسلامی و قوانین موضوعه و قرارداد حاضر در تضاد باشند، حذف نماید.\n'
                                'تبصره: “بسپارش به ما” هیچ‌گونه مسئولیتی در قبال صحت یا عدم صحت نظرات منتشرشده در خصوص سرویس‌ها ندارد. نمایش نظرات کاربران به‌هیچ‌وجه به معنی تأیید فنی “بسپارش به ما” درباره محتویات نظر نیست.\n'
                                '۹-۷ باتوجه به ماهیت سرویس‌ها، پس از گذر زمان طولانی از انجام سرویس، امکان کارشناسی و راستی‌آزمایی در خصوص دعاوی از بین خواهدرفت، لذا مشتری متعهد می‌گردد در صورت بروز مشکلات احتمالی این موارد را حداکثر طی دو هفته تقویمی پس از ارائه خدمات به “بسپارش به ما” اطلاع دهد. عدم توجه به این موضوع به معنای رضایت مشتری و اسقاط کلیه‌ی دعاوی آتی وی در این خصوص خواهدبود.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
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
                                'assets/images/committments.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 250,
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
                                      'ماده ۱۰: حقوق و تعهدات "بسپارش به ما"',
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
                                '۱۰-۱ “بسپارش به ما” متعهد به اجرای قوانین جمهوری اسلامی در کلیه‌ی فعالیت‌­های خود خواهدبود.\n'
                                '۱۰-۲ “بسپارش به ما” متعهد به تلاش برای ارائه‌ی سرویس پرسرعت و باکیفیت است و در این راستا با به‌روزرسانی مداوم وبسایت و نرم‌افزارها، متناسب با نیاز کاربران، سطح خدمات ارائه‌شده را ارتقاء می‌بخشد.\n'
                                '۱۰-۳ “بسپارش به ما” نهایت سعی خود را در خصوص ارتقای کیفیت و سرعت خدمات “بسپارش به ما” خواهدنمود. لیکن عواملی چند از جمله سرعت اینترنت و سیستم الکترونیکی هوشمند مورداستفاده کاربر بر کیفیت خدمات “بسپارش به ما” تأثیر مستقیم دارد. لذا برای استفاده ایده­‌آل از خدمات مذکور، بهتر است از مرورگرهای به‌روزشده و اینترنت و سیستم الکترونیکی هوشمند با سرعت متعارف استفاده نمایید.\n'
                                'تبصره: “بسپارش به ما” نمی‌‌تواند اجراشدن اپلیکیشن “بسپارش به ما” را در تمامی سخت‌افزارها، دستگاه‌های تلفن‌همراه یا شبکه‌های ارتباطی تضمین نماید. لذا در این خصوص هیچگونه مسیولیتی نخواهد داشت.\n'
                                '۱۰-۴ “بسپارش به ما” متعهد به حفظ و حراست از اطلاعاتی است که در نتیجه‌ی استفاده‌ی کاربران از خدمات “بسپارش به ما” در نرم‌افزار ثبت و ذخیره می‌‌شود. این اطلاعات به شرح زیر است:\n'
                                'الف- اطلاعاتی که کاربر به‌صورت مستقیم در فرم مشخصات ثبت‌نام، درخواست خدمت و ... در اختیار “بسپارش به ما” قرار می‌‌دهد.\n'
                                'ب- اطلاعاتی که به‌طور غیرمستقیم و در نتیجه‌ی استفاده‌ی کاربر از خدمات “بسپارش به ما” در این برنامه ذخیره می‌‌شود؛ از جمله موقعیت مکانی محل درخواست خدمت، هزینه‌ی خدمت، تراکنش‌های مالی صورت‌گرفته در حساب کاربری جهت استفاده از خدمات “بسپارش به ما” و اطلاعات مربوط به سخت‌افزاری که کاربر با استفاده از آن از خدمات “بسپارش به ما”استفاده می‌‌کند (نظیر سیستم‌عامل آن) و امثال آن.\n'
                                '۱۰-۵ در راستای ایجاد بستر شفاف برای کاربر، ممکن است “بسپارش به ما” به کاربران اجازه ‌‌دهد عکس، فایل صوتی یا تصویری، اطلاعات، دست‌نوشته یا نظرات خود را در نرم‌افزارهای “بسپارش به ما” منتشر کنند. محتوای تولیدشده - و نه کپی‌شده - توسط کاربران به شیوه‌ی مذکور در مالکیت کاربران قرار دارد. اما کاربران با بارگذاری این موارد روی نرم‌افزارهای “بسپارش به ما” اجازه‌ی استفاده، تغییر و انتشار آن را به هر نحو و در هر زمان به‌صورت رایگان، غیرقابل‌رجوع و قابل‌انتقال به “بسپارش به ما” واگذار می‌کند و کاربر حق هرگونه اعترضی در این خصوص را از خود سلب و ساقط می نماید.\n'
                                '۱۰-۶ “بسپارش به ما” متعهد می‌‌شود که اطلاعات ذخیره‌‌شده در اپلیکشین “بسپارش به ما” را تنها در جهت بهبود کیفیت خدمات “بسپارش به ما” استفاده نماید.\n'
                                '۱۰-۷ “بسپارش به ما” کلیه‌ی اطلاعات فنی را که کاربران مشاهده می­‌کنند ردیابی می­‌کند تا به این ترتیب، قادر به تعیین محبوبیت خدمات و بالابردن کیفیت خدمات “بسپارش به ما” باشد. این اطلاعات در محتویات تبلیغاتی درون سایت یا عملکرد بهتر سرویس‌ها مورد استفاده قرار می‌گیرد.\n'
                                '۱۰-۸“بسپارش به ما” متعهد است کلیه‌ی تغییرات، اصلاحات و الحاقات قرارداد حاضر را در همین صفحه به‌روزرسانی نماید.\n'
                                '۱۰-۹ “بسپارش به ما” متعهد می­‌گردد پیش از توقف ارائه‌ی خدمات، کلیه‌ی سفارش‌‏های ثبت‌شده قبل از توقف سفارش‌گیری را پردازش و نهایی نماید. حق قطع ارائه‌ی کلیه و یا بخشی خدمات بدون اطلاع قبلی، برای “بسپارش به ما” محفوظ است.\n'
                                '۱۰-۱۰“بسپارش به ما” متعهد می­‌گردد کلیه‌ی نظرات و سؤالاتی که با توجه به مفاد این قرارداد ثبت‌شده باشد را، فارغ از بار مثبت و یا منفی آن، بررسی و منتشر نماید.\n'
                                '۱۰-۱۱ “بسپارش به ما” متعهد می­‌گردد به مشکلات احتمالی اعلام‌شده توسط کاربران در خصوص سفارشات و پرداخت‌ها در اسرع وقت رسیدگی نموده و سعی بر رفع مشکلات مذکور نماید.\n'
                                'تبصره: اعلام مشکلات مذکور تنها توسط کاربر و با همان نام کاربری که سفارش صورت گرفته‌است، ممکن خواهدبود. درصورتی‌که نیاز به استرداد وجه باشد استرداد با احراز هویت کاربر و تطابق آن با شماره‌حساب و یا کارت واریزی صورت خواهدپذیرفت.\n'
                                '۱۰-۱۲ هدف اصلی “بسپارش به ما” جلب رضایت مشتری است. لیکن در بعضی مواقع در راستای ارائه‌ی خدمات ممکن است به دلیل اتفاقات غیرمترقبه و خارج از اختیار “بسپارش به ما”، ازجمله شرایط اضطراری و فورس ماژور، قطع سراسری شبکه­‌های ارتباطی، قطع برق، بسته‌شدن مسیر و .... در ارائه‌ی خدمات اخلال ایجادشده و یا سفارشات ثبت‌شده لغو گردد. در این حالت تمام تلاش “بسپارش به ما” به جایگزینی کارشناس متخصص مربوطه با کارشناس متخصص­‌های مشابه خواهدبود. در غیر این صورت هزینه‌های پرداختی توسط مشتری تمام و کمال عودت خواهدشد.\n'
                                '۱۰-۱۳ “بسپارش به ما” حق عدم سرویس‌دهی به کاربران را برای خود محفوظ می‌دارد.\n'
                                '۱۰-۱۴ “بسپارش به ما” مختار است هرگونه محتوایی که کاربران به وبسایت یا اپلیکیشن‌­ها ارسال می‌کنند را به هر نحو که صلاح می‌داند برای توسعه و تبلیغ خدمات خود استفاده نماید.\n'
                                '۱۰-۱۵ بسپارش به ما خود را متعهد می‌داند تا کارشناس متخصص را در بازه زمانی که مشتری در حین ثبت سفارش تأیید کرده و ذیل اطلاعات سفارش در حساب کاربری مشتری در وبسایت به ثبت رسیده است، به محل اعزام کند.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
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
                                'assets/images/conflictresolution.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                height: 800,
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
                                    'ماده ۱۱: حل اختلاف',
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
                                '۱۱-۱ در صورت بروز هرگونه مشکل در زمان انجام سفارش‌ها، مشتری موظف است بلافاصله پشتیبانی “بسپارش به ما” را در جریان قرار دهد. پس از اتمام و ثبت پایان کار، پیگیری و شکایت از عملکرد کارشناس متخصص در تمامی سرویس‌ها تا ۱۴ روز امکان‌پذیر است. پس‌ ازاین تاریخ امکان پیگیری و پشتیبانی وجود ندارد.\n'
                                '۱۱-۲ مشتری و کارشناس متخصص می‌پذیرند که در صورت بروز هرگونه مشکل در نهایت آرامش و به‌دور از هرگونه تشنج مشکل مربوطه را با صلح و سازش و از طریق مذاکره حل نمایند. در صورتی که رفع مشکل از این طریق امکان‌پذیر نبود هر یک از طرفین می‌توانند شکایت خود را به “بسپارش به ما” ابلاغ نماید. در این حالت “بسپارش به ما” با توجه به مستندات، نظر کارشناس و با در نظر گرفتن قوانین، رأی صادر می‌نماید.\n'
                                'تبصره: مشتری و کارشناس متخصص می‌پذیرند رأی “بسپارش به ما” در این خصوص نهایی بوده و برای طرفین الزام‌آور است.\n'
                                '۱۱-۳ در صورت بروز اختلاف بین کاربران و “بسپارش به ما”، طرفین تلاش خواهندکرد اختلاف را به‌صورت مسالمت‌آمیز حل‌وفصل نمایند. در صورت عدم موفقیت، اختلاف به هیئت داوری مرضی‌الطرفین ارجاع داده خواهدشد.\n'
                                '۱۱-۴ کلیه‌ی قوانین حاکم در نظام جمهوری اسلامی ایران بر تعبیر، تفسیر، اجرا و تأثیر این توافق‌نامه حاکم خواهدبود.\n'
                                '۱۱-۵ این مقررات براساس ماده ۱۰ قانون مدنی به‌عنوان یک قرارداد الزام‌آور بر روابط بین کاربر و “بسپارش به ما” حاکم بوده و هرگونه ادعا یا اعتراض آتی کاربر را در این خصوص بلااعتبار می‌سازد.\n'
                                '۱۱-۶ استفاده از وبسایت و اپلیکیشن “بسپارش به ما” و طی‌کردن مراحل ثبت سفارش، به‌منزله‌ی مطالعه، آگاهی کامل و قبول تمامی شرایط و مقررات ذیل است. صرف استفاده‌ی کاربر از خدمات “بسپارش به ما” و ثبت سفارش مجدد، در حکم اعلام رضایت نسبت به شرایط جدید و قبول تغییرات تلقی می‌‌گردد. لذا ضروری است پیش از استفاده از “بسپارش به ما”، این موارد را به‌دقت مطالعه فرمایید. لازم به ذکر است هرگونه علامت، عدد، کلمه، تصویر یا‍ نشان الکترونیک که مثبِت هویت امضاکننده باشد و به این سند یا سایر اسناد صادره در این زمینه ملحق شود به‌منزله‌ی امضای الکترونیک بوده و همانند امضای دست‌نویس واجد اعتبار خواهدبود و امضاکننده را به مفاد سند ملتزم می‌‌نماید.\n'
                                '۱۱-۷ درصورتی‌که کاربر با مشخصات هویتی معین هم‌زمان به‌عنوان «مشتری» برای یک سرویس درخواست ارسال و همان فرد این درخواست را به‌عنوان «کارشناس متخصص» قبول نماید، عمل مزبور تقلب قلمداد شده و “بسپارش به ما” را مجاز می‌سازد که چهار برابر هزینه‌ی سرویس انجام‌شده را از اعتبار متقلب وصول نماید. در شرایطی که این مبلغ تکافوی جبران خسارت وارده را نکند، “بسپارش به ما” مجاز خواهدبود خسارت وارده را از متقلب مطالبه نماید. وصول این مبالغ نافی حق “بسپارش به ما” برای انسداد حساب کاربری مذکور و سایر پیگیری‌های قانونی نخواهدبود. همچنین است درصورتی‌که وابستگان فرد اقدام به اعمال مشابه نمایند و یا کاربران به هر شکل نسبت به “بسپارش به ما” اِعمال حیله و تقلب نمایند و بدین‌وسیله موجبات ضرر “بسپارش به ما” را فراهم آورند.',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
                                  fontFamily: 'iransans',
                                  height: linespacing,
                                  fontSize: textsize,
                                ),
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              width: double.infinity,
                              height: 320,
                              decoration: BoxDecoration(
                                color: Color(0xFFCDEEF0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      'برای آشنایی بیشتر می تونید بخش حریم خصوصی کاربران  ما رو هم مطالعه کنید . تیم بسپارش به ما تمامی اصطلاحات و مواردی رو که لازمه در مورد حقوق و حریم خصوصی کاربران رو  کامل توضیح داده ، امنیت کاربران از موراد مهم ماست بنابراین میتونیم با خیال راحت از خدمات ما استفاده کنید',
                                      style: TextStyle(
                                        color: Color(0xFF037E85),
                                        fontFamily: 'iransans',
                                        height: linespacing,
                                        fontSize: textsize,
                                      ),
                                      textAlign: TextAlign.justify,
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF04A8B2),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          transitionDuration:
                                              Duration(milliseconds: 300),
                                          transitionsBuilder:
                                              (BuildContext context,
                                                  Animation<double> animation,
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
                                          pageBuilder: (BuildContext context,
                                              Animation<double> animation,
                                              Animation<double>
                                                  secondaryAnimation) {
                                            return PrivacyPage();
                                          },
                                        ),
                                      ); // Handle button press
                                    },
                                    child: Text(
                                      'حریم خصوصی کاربران',
                                      style: TextStyle(
                                        fontFamily: 'iransans',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 0),
                                ],
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
