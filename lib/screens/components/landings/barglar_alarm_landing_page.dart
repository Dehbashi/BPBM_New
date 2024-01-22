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

class BurglarAlarmLandingPage extends StatefulWidget {
  const BurglarAlarmLandingPage({Key? key}) : super(key: key);

  @override
  State<BurglarAlarmLandingPage> createState() =>
      _BurglarAlarmLandingPageState();
}

class _BurglarAlarmLandingPageState
    extends State<BurglarAlarmLandingPage> {
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
              LandingGradientContainer(text: 'خدمات دزدگیر'),
              SizedBox(
                height: 20,
              ),
              LandingImageText(
                image: 'assets/landing_images/burglar_alarm.png',
                text: 'دزدگیر',
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
                image: 'assets/landing_images/electrician.png',
                title: 'مشاوره تخصصی',
                text:
                    'مشاوره تلفنی بسپارش به ما رایگانه اما اگر به بازدید حضوری نیاز داشته باشید، کارشناسای ما به شما مراجعه می‌کنند و در صورت ثبت سفارش، هزینه مشاوره به شما برگردونده می‌شه',
              ),
              LandingItem(
                image: 'assets/landing_images/shopping_cart.png',
                title: 'تامین لوازم مورد‌نیاز',
                text:
                    'وقتی سفارشتون رو ثبت کردید، در صورت تمایل می‌تونیم کالا‌ها رو برای شما خریداری کنیم تا نگران تهیه ‌اونا نباشید',
              ),
             LandingItem(
                image: 'assets/landing_images/troubleshooting.png',
                title: 'تعمیر و عیب یابی',
                text:
                    'در صورتیکه از عملکرد سیستم دزدگیرتون راضی نیستید، کارشناسای ما در کم‌ترین زمان ممکن اون رو بررسی و در صورت وجود مشکل اون رو رفع می‌کنند',
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
              LandingTitle(text: 'خدمات دزدگیر'),
              LandingContainerImageText(
                image: 'assets/landing_images/burglar_alarm1.png',
                title: 'جانمایی، نصب و راه‌اندازی',
                text:
                    'جانمایی دقیق و نصب و راه‌اندازی صحیح دزدگیر، به امنیت و حفاظت منزل یا محل کار کمک به سزایی می‌کنه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/burglar_alarm2.png',
                title: 'کابل‌کشی و نصب اتصالات',
                text:
                    'کابل‌کشی و نصب دقیق اتصالات، برای عملکرد اثربخش و قابل اعتماد دزدگیر، اساسیه ',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/burglar_alarm3.png',
                title: 'تعویض، تعمیرات و عیب‌یابی',
                text:
                    'تعویض قطعات فرسوده، عیب‌یابی دقیق و تعمیرات، جهت حفظ عملکرد بهینه سیستم دزدگیر از اهمیت بالایی برخورداره',
              ),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: LandingFooter(),
    );
  }
}
