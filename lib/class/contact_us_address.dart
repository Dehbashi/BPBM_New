import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';


class ContactUsAddress extends StatefulWidget {
  const ContactUsAddress({super.key});

  @override
  State<ContactUsAddress> createState() => _ContactUsAddressState();
}

class _ContactUsAddressState extends State<ContactUsAddress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 590,
      decoration: BoxDecoration(
        color: Color(0xFFCDEEF0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60).add(
              EdgeInsets.only(top: 50),
            ),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Icon(
                  Icons.add_location_alt,
                  size: 24,
                  color: Color(0xFF04A8B2),
                ),
                SizedBox(width: 8),
                Text(
                  'نشانی',
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60).add(
              EdgeInsets.only(right: 32),
            ),
            child: Text(
              'تهران، بزرگراه شهید خرازی، مجتمع تجاری اداری رز مال ',
              style: TextStyle(
                color: Color(0xFF04A8B2),
                fontFamily: 'iransans',
                height: 2.2,
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Icon(
                  Icons.email,
                  size: 24,
                  color: Color(0xFF04A8B2),
                ),
                SizedBox(width: 8),
                Text(
                  ':ایمیل',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF037E85),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'iransans',
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'info@bpbm.app',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF04A8B2),
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'iransans',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: GestureDetector(
              onTap: () async {
                final Uri phoneUri = Uri(
                  scheme: 'tel',
                  path: '02191077077',
                ); // Replace with your phone number
                if (await canLaunchUrl(phoneUri)) {
                  await launchUrl(phoneUri);
                } else {
                  // Handle error: unable to launch the URL
                }
              },
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 48,
                      color: Color(0xFF04A8B2),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'تلفن تماس بسپارش به ما',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF037E85),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'iransans',
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      '۰۲۱-۹۱۰۷۷۰۷۷',
                      style: TextStyle(
                        fontSize: 36,
                        color: Color(0xFF04A8B2),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'iransans',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
