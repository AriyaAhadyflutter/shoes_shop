//دراور
import 'package:day15_shoes/ui/widget/myTextStyle.dart';
import 'package:flutter/material.dart';

Drawer MyDrawer() {
  return Drawer(
    child: Column(
      children: [
        Image(image: AssetImage('assets/images/header.jpg')),
        SizedBox(height: 10),
        ListTile(
          leading: Icon(Icons.home, color: Colors.black),
          title: Text(
            'Home',
            style: DrawerStyle(),
          ),
        ),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.black),
          title: Text(
            'Setting',
            style: DrawerStyle(),
          ),
        ),
        ListTile(
          leading: Icon(Icons.pages, color: Colors.black),
          title: Text(
            'Products',
            style: DrawerStyle(),
          ),
        ),
      ],
    ),
  );
}
