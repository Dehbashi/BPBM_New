import 'package:flutter/material.dart';

import '../screens/components/drawerpage.dart';
import '../screens/components/header.dart';
import '../screens/components/footer.dart';
import '../components/screen/calculator_page.dart';
import '../screens/components/function/fetch_service_list.dart';
import '../screens/components/function/grid_list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> dataList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final fetchServiceList = FetchServiceList();
    final data = await fetchServiceList.fetchData();
    setState(() {
      dataList = data;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  void handleProfileClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF037E85),
          unselectedItemColor: Color(0xFF037E85),
          selectedLabelStyle: TextStyle(
            fontFamily: 'iranSans',
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: 'iranSans',
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
        fontFamily: 'iranSans',
        textTheme: TextTheme(
          /// for services texts
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Color(0xFF025459),
            height: 1.8,
          ),

          /// for services titles
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF037E85),
          ),
          titleLarge: TextStyle(
            fontSize: 24,
            color: Color(0xFF037E85),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        key: _scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Header(
            onMenuClicked: handleMenuClicked, // Pass the callback function
          ),
        ),
        endDrawer: DrawerPage(),
        // drawer: DrawerPage(),
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
                          children: [
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                alignment: Alignment.topCenter,
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 2,
                                      color: Color(0xFF68CBD1),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'چه کارهایی رو میتونید با خیال راحت به ما بسپارید!!؟',
                                  textAlign: TextAlign.right,
                                  // style: Theme.of(context).textTheme.bodyLarge,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF029A91),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.7,
                              child: GridListWidget(
                                dataList: dataList,
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
