// اپ بار
import 'package:flutter/material.dart';

AppBar MyAppBar() {
  return AppBar(
    actions: [
      Icon(
        Icons.notifications_outlined,
        color: Colors.black,
        size: 25,
      ),
      SizedBox(width: 15),
      Icon(
        Icons.shopping_cart_sharp,
        color: Colors.black,
        size: 25,
      ),
      SizedBox(width: 10),
    ],
    title: Text(
      'Shoes',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
    ),
    backgroundColor: Colors.white,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(
            Icons.dehaze_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      },
    ),
    elevation: 0,
  );
}
