import 'dart:math';

import 'package:flutter/material.dart';

import './header.dart';
import './footer.dart';
import './drawerpage.dart';
import './order_container.dart';
import './function/fetch_user_orders.dart';
import '../../class/user_order_info.dart';

class UserPanelPageOrders extends StatefulWidget {
  const UserPanelPageOrders({super.key});

  @override
  State<UserPanelPageOrders> createState() => _UserPanelPageOrdersState();
}

class _UserPanelPageOrdersState extends State<UserPanelPageOrders> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<dynamic> data = [];

  void handleMenuClicked() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  void initState() {
    super.initState();
    fetchData(); // Call the fetchData method here
  }

  void fetchData() async {
    try {
      Map<String, dynamic> fetchedData = await fetchUserOrders();
      setState(() {
        data = fetchedData['data']['data'];
      });
      print('data inside user panel page orders is $data');
    } catch (e) {
      print('Error: $e');
    }
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
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF04A8B2),
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  'سفارش های من',
                  style: TextStyle(
                    color: Color(0xFF037E85),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: data.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          String address = data[index]['address']['text'];
                          int orderId = data[index]['id'];
                          int serviceId = data[index]['order']['service_id'];
                          String serviceTitle = data[index]['service'];
                          int orderStatus = data[index]['order_status'];
                          String technicianName =
                              data[index]['servicer']['user']['name'];
                          String technicianCellNumber =
                              data[index]['servicer']['user']['phone_number'];
                          String transportationPrice =
                              data[index]['order']['transportationcost'];
                          String totalPrice =
                              data[index]['order']['totalprice'];
                          String discount = data[index]['order']['discount'];
                          String date = data[index]['order']['date'];
                          String time = data[index]['order']['time'];
                          return OrderContainer(
                            address: address,
                            date: date,
                            orderStatus: orderStatus,
                            orderId: orderId,
                            serviceId: serviceId,
                            serviceTitle: serviceTitle,
                            technicianCellNumber: technicianCellNumber,
                            technicianName: technicianName,
                            time: time,
                            totalPrice: totalPrice,
                            transportationPrice: transportationPrice,
                            discount: discount,
                          );
                        },
                      ),
              ),
              // OrderContainer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
