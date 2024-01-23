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

class CentralLandingPage extends StatefulWidget {
  const CentralLandingPage({Key? key}) : super(key: key);

  @override
  State<CentralLandingPage> createState() =>
      _CentralLandingPageState();
}

class _CentralLandingPageState
    extends State<CentralLandingPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String serviceName = 'سانترال';

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
              LandingGradientContainer(text: 'خدمات $serviceName'),
              SizedBox(
                height: 20,
              ),
              LandingImageText(
                image: 'assets/landing_images/central.png',
                text: serviceName,
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
                image: 'assets/landing_images/desing_to_implement.png',
                title: 'از طراحی تا اجرا',
                text:
                    'کارشناسای ما می‌تونن سیستم سانترال مناسب شما رو براتون طراحی و در صورت نیاز تنظیمات مورد‌نیاز رو براتون اعمال کنند',
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
              LandingTitle(text: 'خدمات $serviceName'),
              LandingContainerImageText(
                image: 'assets/landing_images/central1.png',
                title: 'نصب و راه‌اندازی',
                text:
                    'سانترال، نقش کلیدی در برقراری ارتباطات داخلی و خارجی سازمان داره که به بهبود کارایی و هماهنگی در سازمان کمک می‌کنه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/central2.png',
                title: 'کابل‌کشی و نصب اتصالات',
                text:
                    'رعایت استانداردها در کابل‌کشی و نصب دقیق اتصالات، از تداخل‌های الکترومغناطیسی جلوگیری می‌کنه و به عملکرد بهتر و عدم اختلال کمک می‌کنه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/central3.png',
                title: 'تعمیرات و عیب‌یابی',
                text:
                    'تجربه و تخصص فنی در عیب‌یابی و تعمیر، امری ضروریه تا مشکلات به سرعت شناسایی و برطرف شوند',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/central4.png',
                title: 'نصب و تعویض تجهیزات جانبی',
                text:
                    'انتخاب و استفاده از تجهیزات با کیفیت و سازگار با سانترال، از اهمیت بالایی برخورداره تا قابلیت‌ها و امکانات جدید به سیستم ارتباطی اضافه بشه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/central5.png',
                title: 'برنامه‌ریزی و ارتقا',
                text:
                    'برنامه‌ریزی و ارتقای سخت‌افزاری و نرم‌افزاری سانترال با رعایت استانداردها و بهره‌گیری از فناوری‌های جدید و پیشرفته، به بهبود عملکرد سیستم کمک می‌کنه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/central6.png',
                title: 'افزودن خطوط داخلی جدید',
                text:
                    'تنظیم و پیکربندی صحیح خطوط داخلی جدید، به جلوگیری از اختلالات در سیستم کمک می‌کنه و منجر به بهبود ارتباطات داخلی و هماهنگی بین اعضای تیم در سازمان می‌شه',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: LandingFooter(),
    );
  }
}
