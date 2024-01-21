import 'package:flutter/material.dart';

import '../../class/app_title_container.dart';
import './header.dart';
import './footer.dart';
import './drawerpage.dart';
import '../../class/technicians_guide_item.dart';
import '../../class/contact_us_message_textfield.dart';
import '../../class/app_elevated_button.dart';

class TechniciansGuide extends StatefulWidget {
  const TechniciansGuide({super.key});

  @override
  State<TechniciansGuide> createState() => _TechniciansGuideState();
}

class _TechniciansGuideState extends State<TechniciansGuide> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Header(
          onMenuClicked: handleMenuClicked, // Pass the callback function
        ),
      ),
      endDrawer: DrawerPage(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              AppTitleContainer(text: 'راهنمای متخصصین', icon: Icons.emoji_objects,),
              SizedBox(
                height: 20,
              ),
              AppTitleContainer(text: 'بسپارش به ما کیه و چیکار میکنه؟'),
              SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/technicians_guide.png',
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  height: 200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'بسپارش به ما پلی زده بین متخصصین برق‌کار حرفه‌ای مثل شما و کاربرهایی که به تخصص شما نیاز دارن. با هر تخصصی توی کارهای الکتریکی، اونقدر مشتری براتون پیدا می‌کنیم که وقت سر خاروندن نداشته باشین. بسپارش به ما برای اینکه بهترین خدمت رو به مردم ارائه کنه، حسابی هوای هم تیمی‌هاش رو داره!',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TechniciansGuideItem(
                icon: Icons.library_add_check,
                title: 'فقط روی مهارت خودت تمرکز میکنی',
                text:
                    'بسپارش به ما دیگه عجیب نیست که هم رئیس خودت باشی هم درآمدت مطمئن باشه. هرچه قدر هم که مشتری‌هات زیاد باشن و سرت شلوغ باشه، پرداختی‌هات منظم و باحساب و کتاب انجام می‌شن. بسپارش به ما خوش‌قوله.',
              ),
              TechniciansGuideItem(
                icon: Icons.person_outline,
                title: 'رئیس خودت هستی',
                text:
                    'دیگه نیازی نیست خودت رو به زمان و محل کار محدود کنی! اینجا دست خودته چه ساعتی یا توی چه محله‌ای کار کنی! انتخاب همه چیز با خودته.',
              ),
              TechniciansGuideItem(
                icon: Icons.attach_money,
                title: 'درآمد مطمئن و پرداخت به موقع داری',
                text:
                    'با بسپارش به ما دیگه عجیب نیست که هم رئیس خودت باشی هم درآمدت مطمئن باشه. هرچه قدر هم که مشتری‌هات زیاد باشن و سرت شلوغ باشه، پرداختی‌هات منظم و باحساب و کتاب انجام می‌شن. بسپارش به ما خوش‌قوله.',
              ),
              TechniciansGuideItem(
                icon: Icons.build,
                title: 'با ما رشد می‌کنی',
                text:
                    'کار خوب همیشه با خودش مشتری بیشتر میاره. هرچی کیفیت خدماتت بالاتر باشه، اون‌ها هم توی نظرسنجی امتیاز بالاتری بهت می‌دن و می‌تونی به یکی از کارشناس‌های برتر بسپارش به ما تبدیل بشی، این‌طوری نه فقط مشتری‌هات بیشتر می‌شن بلکه حق کمیسیونی که به بسپارش به ما پرداخت می‌کنی هم کمتر می‌شه.',
              ),
              TechniciansGuideItem(
                icon: Icons.headset_mic,
                title: 'همیشه پشتیبانی ما رو کنارت داری',
                text:
                    'به هر سوال یا مشکلی برخوردی فقط کافیه با نیروی پشتیبانی تماس بگیری. همکارهامون در سریع‌ترین زمان ممکن مشکلت رو برطرف میکنن.',
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFCDEEF0),
                  border: Border.all(
                    color: Color(0xFF025459),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      'برای همکار شدن همین الان درخواستت رو برامون ارسال کن.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ContactUsMessageTextfield(
                      text: 'نام',
                      height: 50,
                    ),
                    ContactUsMessageTextfield(
                      text: 'نام خانوادگی',
                      height: 50,
                    ),
                    ContactUsMessageTextfield(
                      text: 'کد ملی',
                      height: 50,
                    ),
                    ContactUsMessageTextfield(
                      text: 'شماره تلفن همراه',
                      height: 50,
                    ),
                    ContactUsMessageTextfield(
                      text: 'پیام شما ...',
                      height: 250,
                      condition: 'longTextField',
                    ),
                    SizedBox(height: 10,),
                    AppElevatedButton(
                      text: 'ارسال درخواست همکاری',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
