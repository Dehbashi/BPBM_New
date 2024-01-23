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

class AirConditioningLandingPage extends StatefulWidget {
  const AirConditioningLandingPage({Key? key}) : super(key: key);

  @override
  State<AirConditioningLandingPage> createState() =>
      _AirConditioningLandingPageState();
}

class _AirConditioningLandingPageState
    extends State<AirConditioningLandingPage> {
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
              LandingGradientContainer(text: 'خدمات هواکش'),
              SizedBox(
                height: 20,
              ),
              LandingImageText(
                image: 'assets/landing_images/air_conditioning.png',
                text: 'هواکش',
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
              LandingTitle(text: 'خدمات هواکش'),
              LandingContainerImageText(
                image: 'assets/landing_images/air_conditioning1.png',
                title: 'کابل‌کشی و نصب اتصالات',
                text:
                    'برنامه‌ریزی دقیق کابل‌کشی، نصب اتصالات مطابق با استانداردها و استفاده از تجهیزات صنعتی مناسب به ارتقای عملکرد سیستم کمک می‌کنه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/air_conditioning2.png',
                title: 'تعویض، تعمیرات و عیب‌یابی',
                text:
                    'حفظ عملکرد بهینه تجهیزات صنعتی با تعویض هواکش‌های فرسوده، عیب‌یابی دقیق و تعمیر صحیح آن‌ها، از اهمیت بالایی برخورداره',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: LandingFooter(),
    );
  }
}
