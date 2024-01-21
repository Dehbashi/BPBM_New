import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:persian/persian.dart';

class HeaderLanding extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onMenuClicked; // Named parameter for menu click

  const HeaderLanding({Key? key, this.onMenuClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5F7F7),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFEBF9F9).withOpacity(1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Offset in the y-axis for the shadow
          ),
        ],
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: AppBar(
          elevation: 1,
          backgroundColor: Color(0xFFF5F7F7),
          // backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 121,
                height: 68,
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                '${'021-91077077'.withPersianNumbers()}',
                style: TextStyle(
                  color: Color(0xFF828484),
                  fontSize: 14,
                  fontFamily: 'iranSans',
                ),
              ),
            ],
          ),
          actions: [
            Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.infinity, double.infinity),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(
                            color: Color(0xFF04A8B2),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      String phoneNumber = '02191077077';
                      String url = 'tel:$phoneNumber';
                      await launchUrl(Uri.parse(url));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.call,
                          color: Color(0xFF04A8B2),
                        ),
                        Text(
                          'مشاوره تلفنی',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF04A8B2),
                            fontFamily: 'iranSans',
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
