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

class LightingLandingPage extends StatefulWidget {
  const LightingLandingPage({Key? key}) : super(key: key);

  @override
  State<LightingLandingPage> createState() => _LightingLandingPageState();
}

class _LightingLandingPageState extends State<LightingLandingPage> {
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
              LandingGradientContainer(text: 'خدمات نورپردازی'),
              SizedBox(
                height: 20,
              ),
              LandingImageText(
                image: 'assets/landing_images/lighting.png',
                text: 'نورپردازی',
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
              LandingTitle(text: 'خدمات نورپردازی'),
              LandingContainerImageText(
                image: 'assets/landing_images/lighting1.png',
                title: 'اجرای انواع نور‌پردازی محیط داخلی',
                text:
                    'با استفاده از اسپات‌ها، روشنایی پنهان و افکت‌های نوری، می‌شه جذابیت بصری زیادی رو در فضاهای داخلی ایجاد کرد',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/lighting2.png',
                title: 'اجرای انواع نور‌پردازی محیط خارجی و محوطه ساختمان‌ها',
                text:
                    'با استفاده از اسپات‌ها، روشنایی پنهان و افکت‌های نوری، روشنایی مسیرها، نورپردازی درختان و فضاهای سبز، می‌شه زیبایی ساختمان و محوطه اون رو دوچندان کرد',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/lighting3.png',
                title: 'اجرای انواع نور‌پردازی نمای ساختمان‌ها',
                text:
                    'نورپردازی نمای ساختمان‌ها، به برجسته‌سازی و تزئین ظاهر خارجی‌ و ایجاد شکوه و جذابیت بصری در شب کمک می‌کنه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/lighting4.png',
                title: 'کابل‌کشی و نصب اتصالات',
                text:
                    'کابل‌کشی و نصب مناسب اتصالات، ارتباط پایدار و انتقال بهینه برق بین اجزای مختلف سیستم رو فراهم می‌کنه',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: LandingFooter(),
    );
  }
}
