import 'package:flutter/material.dart';

import './rules.dart';
import './footer.dart';
import './drawerpage.dart';
import './header.dart';
import '../../class/app_elevated_button.dart';

class PrivacyPage extends StatelessWidget {
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
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              textDirection: TextDirection.rtl,
                              children: [
                                Icon(
                                  Icons.security,
                                  size: 24,
                                  color: Color(0xFF04A8B2),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'حریم خصوصی کاربران  بسپارش به ما',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF037E85),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 0),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(imageradius),
                            child: Image.asset(
                              'assets/images/privacy.png',
                              // fit: BoxFit.fitWidth,
                              width: 300,
                              height: 300,
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: textpadding),
                            child: Text(
                              'مشتری گرامی،شما برای دریافت خدمات از طریق پلتفرم‌های آنلاین، باید اطلاعات شخصی خودتون مثل اسم، آدرس و شماره تلفن رو توی سایت یا اپلیکیشن وارد کنین. درواقع شما با ثبت کردن اطلاعاتتون توی سایت ما، صحت اون‌ها رو تأیید می‌کنین. ما هم از طریق همین اطلاعات برای ارائه خدمات به شما باهاتون در تماس هستیم. تمام اطلاعات شما فقط با حکم قانونی در اختیار مراجع ذی‌صلاح قرار داده می‌شه و ما به شما تعهد می‌دیم که اطلاعاتتون پیش ما محفوظه و حریم شخصی‌تون رعایت می‌شه. در صورتی که نظر یا پیام ارسالی کاربرها مشمول مصادیق محتوای مجرمانه باشه، بسپارش به ما از اطلاعات ثبت شده برای پیگیری قانونی استفاده می‌کنه. درضمن، بسپارش به ما توی همه‌ی فعالیت‌هاش از قوانین تجارت الکترونیک تبعیت می‌کنه، بنابراین قانون هم روی تعهد ما به شما نظارت داره.',
                              style: TextStyle(
                                color: Color(0xFF037E85),
                                height: linespacing,
                                fontSize: textsize,
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          SizedBox(height: 60),
                          Container(
                            width: double.infinity,
                            height: 314,
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
                                    'برای آشنایی بیشتر می تونید بخش قوانین و مقررات ما رو هم مظالعه کنید . تیم بسپارش به ما تمامی اصطلاحات و مواردی رو که لازمه در مورد ما و نحوه کار ما بدونید رو توضیح داده و با مطالعه اون مطلب می تونید باسخ سوالات حقوقی خودتون رو در مورد کسب و کار ما پیدا کنید',
                                    style: TextStyle(
                                      color: Color(0xFF037E85),
                                      height: linespacing,
                                      fontSize: textsize,
                                    ),
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                                AppElevatedButton(
                                    text: 'قوانین و مقررات',
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Rules(),
                                        ),
                                      );
                                    }),
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
    );
  }
}
