import 'package:flutter/material.dart';

import './app_title_container.dart';
import './app_elevated_button.dart';
import './contact_us_message_textfield.dart';

class ContactUsMessage extends StatefulWidget {
  const ContactUsMessage({super.key});

  @override
  State<ContactUsMessage> createState() => _ContactUsMessageState();
}

class _ContactUsMessageState extends State<ContactUsMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1000,
      padding: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        color: Color(0xFFCDEEF0),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 5,
            offset: Offset(0, 4), // changes the position of the shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppTitleContainer(text: 'با ما در میان بگذارید'),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'اگر موردی هست که لازمه ما بدونیم یا پیگیری کنیم  برای ما پیام ارسال کنید\n'
              'پیام شما خیلی سریع  به دست کارشناسای ما میرسه ',
              // style: Theme.of(context).textTheme.bodyMedium,
              style: TextStyle(
                color: Color(0xFF037E85),
                height: 2.2,
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactUsMessageTextfield(
                  height: 50,
                  text: 'موضوع پیام',
                ),
                SizedBox(
                  height: 10,
                ),
                ContactUsMessageTextfield(
                  height: 50,
                  text: 'نام و نام خانوادگی',
                ),
                SizedBox(
                  height: 10,
                ),
                ContactUsMessageTextfield(
                  height: 50,
                  text: 'شماره تماس برای پیگیری',
                ),
                SizedBox(
                  height: 10,
                ),
                ContactUsMessageTextfield(
                  height: 200,
                  text: 'متن پیامتون رو بنویسید',
                  condition: 'longTextField',
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //There sits the Recaptcha
              ],
            ),
          ),
          SizedBox(height: 25),
          AppElevatedButton(text: 'ارسال پیام', onPressed: () {}),
        ],
      ),
    );
  }
}
