import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onMenuClicked; // Named parameter for menu click

  const Header({Key? key, this.onMenuClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Offset in the y-axis for the shadow
          ),
        ],
      ),
      child: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          width: 121,
          height: 68,
        ),
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey,
                ),
                onPressed: onMenuClicked, // Invoke the callback function
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
