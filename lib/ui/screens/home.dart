import 'package:day15_shoes/ui/widget/categoryButton.dart';
import 'package:day15_shoes/ui/widget/myDrawer.dart';
import 'package:day15_shoes/ui/widget/myTextStyle.dart';
import 'package:day15_shoes/ui/widget/myappbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
// import 'package:get/get_connect/http/src/utils/utils.dart';

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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 10),
              MyTextButton(
                myCategory: 'All',
                myTS: allStyle(),
                myPadding: 18,
              ),
              MyTextButton(
                myCategory: 'sneakers',
                myTS: outhersStyle(),
                myPadding: 13,
              ),
              MyTextButton(
                myCategory: 'Football',
                myTS: outhersStyle(),
                myPadding: 13,
              ),
              MyTextButton(
                myCategory: 'Runnig',
                myTS: outhersStyle(),
                myPadding: 13,
              ),
              MyTextButton(
                myCategory: 'Air',
                myTS: outhersStyle(),
                myPadding: 13,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
