import 'package:flutter/material.dart';
import 'package:bpbm2/screens/components/footer.dart';

class FrequentlyAskedQs extends StatelessWidget {
  final double textpadding = 12;
  final double headingpadding = 18;
  final double imageradius = 15;
  final double linespacing = 2.2;
  final double textsize = 16;
  final double headingsize = 24;
  final double bottomiconsize = 75;

  List<Map<String, String>> questionAnswerList = [
    {
      'question': 'Question 1',
      'answer': 'Answer 1',
    },
    {
      'question': 'Question 2',
      'answer': 'Answer 2',
    },
    // Add more question-answer pairs as needed
  ];

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
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: headingpadding),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Text(
                                    'سوالات پر تکرار',
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
                            SizedBox(height: 16),
                            Container(
                              width: double.infinity,
                              height: 593,
                              decoration: BoxDecoration(
                                color: Color(0xFFCDEEF0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(imageradius),
                                    child: Image.asset(
                                      'assets/images/frequent.png',
                                      fit: BoxFit.fitWidth,
                                      width: double.infinity,
                                      height: 220,
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: textpadding),
                                    child: Text(
                                      'کاربر گرامی  ما در این صفحه سعی کردیم به تمامی پرسشهایی که تا به حال از ما پرسیده شده و ممکنه برای شما هم سوال پیش اومده باشه پاسخ بدیم ، در صورتی که پاسخ سوالات خودتون رو تو این بخش پیدا نکردید می تونید از طریق تکمیل  فرم تماس در صفحه تماس با ما یا تماس با شماره های بخش پشتیبانی، پاسخ پرسشهای خودتون رو دریافت کنید ، همکاران ما پاسخگوی شما هستند.',
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
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        height: 40,
                                        width: 210, // Set the desired width
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF04A8B2),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                          ),
                                          onPressed: () {
                                            // Handle button press
                                            // Navigator.push(
                                            //   context,
                                            //   PageRouteBuilder(
                                            //     transitionDuration: Duration(milliseconds: 300),
                                            //     transitionsBuilder: (BuildContext context,
                                            //         Animation<double> animation,
                                            //         Animation<double> secondaryAnimation,
                                            //         Widget child) {
                                            //       return SlideTransition(
                                            //         position: Tween<Offset>(
                                            //           begin: Offset(1.0, 0.0),
                                            //           end: Offset.zero,
                                            //         ).animate(animation),
                                            //         child: child,
                                            //       );
                                            //     },
                                            //     pageBuilder: (BuildContext context,
                                            //         Animation<double> animation,
                                            //         Animation<double> secondaryAnimation) {
                                            //       return PrivacyPage();
                                            //     },
                                            //   ),
                                            // );
                                          },
                                          child: Text(
                                            'تماس با ما',
                                            style: TextStyle(
                                              fontFamily: 'iransans',
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              height: 300,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCDEEF0),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  padding: EdgeInsets.all(0),
                                  child: ListView.builder(
                                    itemCount: questionAnswerList.length,
                                    itemBuilder: (context, index) {
                                      final question =
                                          questionAnswerList[index]['question'];
                                      final answer =
                                          questionAnswerList[index]['answer'];

                                      return Container(
                                        margin: EdgeInsets.only(bottom: 0),
                                        child: ExpansionTile(
                                          title: Text(question ?? ''),
                                          // leading: Icon(Icons.arrow_drop_down),
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.0),
                                              child: Text(answer ?? ''),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
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
