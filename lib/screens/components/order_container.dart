import 'package:flutter/material.dart';

import '../../class/app_elevated_button.dart';
import './order_container_step.dart';
import './order_container_price.dart';

class OrderContainer extends StatefulWidget {
  const OrderContainer({super.key});

  @override
  State<OrderContainer> createState() => _OrderContainerState();
}

class _OrderContainerState extends State<OrderContainer> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFCDEEF0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'سفارش شماره: 100245',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFA14A),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Color(0xFF037E85),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1402/07/11',
                      style: TextStyle(
                        color: Color(0xFF037E85),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/homeicons/5.webp',
                  color: Color(0xFF00A99D),
                  width: 64,
                  height: 64,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'نصب دوربین مداربسته',
                  style: TextStyle(
                    color: Color(0xFF037E85),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xFF037E85),
                              size: 24,
                            ),
                            Expanded(
                              child: Text(
                                'تهران - بزرگراه شهید حجازی صارمی',
                                style: TextStyle(
                                  color: Color(0xFF037E85),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        OrderContainerPrice(
                          type: 'discount',
                          price: '1450000',
                          text: 'تخفیف',
                        ),
                        OrderContainerPrice(
                          type: 'transportation',
                          price: '550000',
                          icon: Icons.airport_shuttle_outlined,
                        ),
                        OrderContainerPrice(
                          type: 'total',
                          price: '1450000',
                          text: 'جمع کل',
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    // margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF68CBD1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/profile_image.png',
                          width: 80,
                          height: 80,
                        ),
                        Text(
                          'سرویسکار\n'
                          'مهدی فولادی',
                          style: TextStyle(
                            color: Color(0xFF037E85),
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            OrderContainerStep(text: 'تایید اولیه'),
            OrderContainerStep(text: 'سرویسکار مشخص شد'),
            OrderContainerStep(text: 'سرویسکار درحال حرکت به سمت شماست'),
            OrderContainerStep(text: 'سفارش با موفقیت انجام شد'),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 5,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete_forever,
                          color: Colors.red,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: AppElevatedButton(
                      onPressed: () {},
                      text: 'مشاهده جزئیات',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
