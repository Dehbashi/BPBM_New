import 'package:flutter/material.dart';

import 'package:bpbm2/screens/components/landings/header_landing.dart';
import 'package:bpbm2/class/gradient_text.dart';
import 'package:bpbm2/class/landing_gradient_container.dart';
import 'package:bpbm2/class/landing_gradient_text.dart';
import 'package:bpbm2/class/landing_image_text.dart';
import 'package:bpbm2/class/landing_elevated_button.dart';
import 'package:bpbm2/class/landing_title.dart';
import 'package:bpbm2/class/landing_item.dart';
import 'package:bpbm2/class/landing_container_image_text.dart';
import 'package:bpbm2/screens/components/landings/landing_footer.dart';
import 'package:bpbm2/class/landing_countdown.dart';

class IndustrialPowerLandingPage extends StatefulWidget {
  const IndustrialPowerLandingPage({Key? key}) : super(key: key);

  @override
  State<IndustrialPowerLandingPage> createState() =>
      _IndustrialPowerLandingPageState();
}

class _IndustrialPowerLandingPageState
    extends State<IndustrialPowerLandingPage> {
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
        child: HeaderLanding(
          onMenuClicked: handleMenuClicked,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 50,
          ),
          child: Column(
            children: [
              LandingGradientText(),
              SizedBox(
                height: 20,
              ),
              LandingGradientContainer(text: 'خدمات برق صنعتی'),
              SizedBox(
                height: 20,
              ),
              LandingImageText(
                image: 'assets/landing_images/industrial_power.png',
                text: 'برق صنعتی',
              ),
              SizedBox(
                height: 30,
              ),
              LandingElevatedButton(
                text: 'ثبت سفارش',
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              LandingCountdown(),
              SizedBox(
                height: 20,
              ),
              LandingTitle(text: 'مزیت های سرویس ((بسپارش به ما))'),
              SizedBox(
                height: 10,
              ),
              LandingItem(
                image: 'assets/landing_images/guarantee_certificate.png',
                title: 'گارانتی خدمات و تجهیزات',
                text:
                    'برای تمام خدماتی که ارائه می‌کنیم، به شما گارانتی می‌دیم',
              ),
              LandingItem(
                image: 'assets/landing_images/support.png',
                title: 'ثبت سفارش آسان',
                text:
                    'شما می‌تونید با پاسخ به چند سوال ساده، جزئیات سرویس مورد‌نظرتون رو مشخص کنید تا قیمت سفارش توسط سیستم به شما اعلام بشه',
              ),
              LandingItem(
                image: 'assets/landing_images/shopping_cart.png',
                title: 'تامین لوازم مورد‌نیاز',
                text:
                    'وقتی سفارشتون رو ثبت کردید، در صورت تمایل می‌تونیم کالا‌ها رو برای شما خریداری کنیم تا نگران تهیه ‌اونا نباشید',
              ),
              LandingItem(
                image: 'assets/landing_images/standard_design.png',
                title: 'طراحی استاندارد',
                text:
                    'تابلو‌هایی که توسط بسپارش به ما طراحی می‌شه، با‌اطمینان تاییدیه‌های اداره برق رو دریافت می‌کنه',
              ),
              LandingItem(
                image: 'assets/landing_images/electrical_panel_3.png',
                title: 'طراحی تابلوی سه فاز',
                text:
                    'طراحی و ساخت تابلو برق‌های سه فاز، یکی از با‌سابقه‌ترین خدماتیه که ارائه می‌کنیم',
              ),
              LandingItem(
                image: 'assets/landing_images/shopping.png',
                title: 'فاکتور و گزارش‌کار معتبر',
                text:
                    'برای خدمات ارائه شده، فاکتور معتبر دریافت می‌کنید. همچنین در یک گزارش کار مکتوب، جزئیات خدمات انجام شده بهتون تحویل داده می‌شه',
              ),
              LandingItem(
                image: 'assets/landing_images/location.png',
                title: 'پوشش‌دهی وسیع',
                text: 'ما به تمام مناطق شهر تهران خدمات ارائه می‌کنیم',
              ),
              LandingTitle(text: 'خدمات برق صنعتی'),
              LandingContainerImageText(
                image: 'assets/landing_images/industrial_power1.png',
                title: 'طراحی و اجرا',
                text:
                    'طراحی و اجرای برق صنعتی، شامل نصب و راه‌اندازی تجهیزات، کابل‌کشی، اتصالات نصب و تست عملکرده',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/industrial_power2.png',
                title: 'داکت‌کشی، کابل‌کشی و نصب اتصالات',
                text:
                    'داکت‌کشی و کابل‌کشی، به تأمین انتقال ایمن برق و مدیریت مناسب اتصالات در محیط‌های صنعتی کمک می‌کنه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/industrial_power3.png',
                title: 'تعمیرات و عیب‌یابی',
                text:
                    'تعمیرات شامل تشخیص و عیب‌یابی مشکلات مربوط به قطعات و اتصالات، تعویض قطعات معیوب و تست سیستمه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/industrial_power4.png',
                title: 'نصب و تعویض جعبه مینیاتوری',
                text:
                    'جعبه مینیاتوری به فراهم کردن محیطی ایمن و مطمئن برای توزیع و کنترل برق در محیط‌های صنعتی کمک می‌کنه',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: LandingFooter(),
    );
  }
}
