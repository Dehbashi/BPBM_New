import 'package:flutter/material.dart';

import './header_landing.dart';
import '../../../class/gradient_text.dart';
import '../../../class/landing_gradient_container.dart';
import '../../../class/landing_gradient_text.dart';
import '../../../class/landing_image_text.dart';
import '../../../class/landing_elevated_button.dart';
import '../../../class/landing_title.dart';
import '../../../class/landing_item.dart';
import '../../../class/landing_container_image_text.dart';
import './landing_footer.dart';
import '../../../class/landing_countdown.dart';

class CctvLandingPage extends StatefulWidget {
  const CctvLandingPage({Key? key}) : super(key: key);

  @override
  State<CctvLandingPage> createState() => _CctvLandingPageState();
}

class _CctvLandingPageState extends State<CctvLandingPage> {
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
              LandingGradientContainer(text: 'خدمات دوربین مداربسته'),
              SizedBox(
                height: 20,
              ),
              LandingImageText(
                image: 'assets/landing_images/cctv.png',
                text: 'دوربین مداربسته',
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
                image: 'assets/landing_images/monitoring.png',
                title: 'مانیتورینگ 24 ساعته',
                text:
                    'با نرم افزاری که ما براتون نصب می کنیم، می تونید به صورت 24 ساعته تصاویر زنده دوربین ها رو روی گوشی، تبلت و کامپیوتر مشاهده کنید',
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
              LandingTitle(text: 'خدمات دوربین مداربسته'),
              LandingContainerImageText(
                image: 'assets/landing_images/cctv1.png',
                title: 'جانمایی، نصب و راه اندازی',
                text:
                    'جانمایی دقیق و حرفه‌ای، پوشش کامل و بهینه فضاهای مورد‌نظر رو فراهم می‌کنه. ما از نرم‌افزار‌های تخصصی برای انتخاب و جانمایی دوربین استفاده می‌کنیم',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/cctv2.png',
                title: 'داکت‌کشی، کابل‌کشی و نصب اتصالات',
                text:
                    'سیم‌کشی و داکت‌کشی منظم و حرفه‌ای، امکان انتقال سیم‌ها رو به صورت مخفیانه و ایمن در داخل ساختمان فراهم می‌کنه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/cctv3.png',
                title: 'تعمیرات، عیب‌یابی و رفع نویز',
                text:
                    'تعمیرات، عیب‌یابی و رفع نویز، موجب حفظ کیفیت تصویر و تضمین عملکرد صحیح و پایدار اونا می‌شه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/cctv4.png',
                title: 'مشاوره نصب، جانمایی و خرید',
                text:
                    'مشاوره تخصصی در خرید و نصب، به انتخاب بهترین سیستم مطابق با نیازها و اهداف شما کمک می‌کنه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/cctv5.png',
                title: 'سرویس‌های دوره‌ای و تنظیمات نرم‌افزاری',
                text:
                    'سرویس‌های دوره‌ای، به ارتقا و به‌روزرسانی مداوم عملکرد و حفظ کیفیت و کارایی می‌پردازه',
              ),
              LandingContainerImageText(
                image: 'assets/landing_images/cctv6.png',
                title: 'نصب و راه‌اندازی نرم‌افزار‌های کنترل از راه دور',
                text:
                    'راه‌اندازی دقیق نرم‌افزارهای کنترل از راه دور، امکاناتی مثل مشاهده زنده، ضبط و تنظیمات پیشرفته رو در دسترس قرار می‌ده و موجب بهبود امنیت سیستم می‌شه',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: LandingFooter(),
    );
  }
}
