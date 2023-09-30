import 'package:day15_shoes/ui/widget/myDrawer.dart';
import 'package:day15_shoes/ui/widget/myTextStyle.dart';
import 'package:day15_shoes/ui/widget/myappbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 60, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'All',
              style: allStyle(),
            ),
            Text(
              'Sneakers',
              style: outhersStyle(),
            ),
            Text(
              'Football',
              style: outhersStyle(),
            ),
            Text(
              'Running',
              style: outhersStyle(),
            ),
            Text(
              'Air',
              style: outhersStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
 