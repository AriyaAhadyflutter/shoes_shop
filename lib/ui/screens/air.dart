import 'package:day15_shoes/Animation/FadeAnimation.dart';
import 'package:day15_shoes/ui/screens/footBall.dart';
import 'package:day15_shoes/ui/screens/home.dart';
import 'package:day15_shoes/ui/screens/running.dart';
import 'package:day15_shoes/ui/screens/snekars.dart';
import 'package:day15_shoes/ui/widget/categoryButton.dart';
import 'package:day15_shoes/ui/widget/myDrawer.dart';
import 'package:day15_shoes/ui/widget/myTextStyle.dart';
import 'package:day15_shoes/ui/widget/myappbar.dart';
import 'package:flutter/material.dart';

class Air extends StatefulWidget {
  const Air({super.key});

  @override
  State<Air> createState() => _AirState();
}

class _AirState extends State<Air> {
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
                myPadding: 10,
                myOnTap: () {},
              ),
              MyTextButton(
                myCategory: 'Sneakers',
                myTS: outhersStyle(),
                myPadding: 13,
                myOnTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Sneakars();
                    },
                  ),
                ),
              ),
              MyTextButton(
                myCategory: 'Football',
                myTS: outhersStyle(),
                myPadding: 13,
                myOnTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Football();
                    },
                  ),
                ),
              ),
              MyTextButton(
                myCategory: 'Runnig',
                myTS: outhersStyle(),
                myPadding: 13,
                myOnTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Running();
                    },
                  ),
                ),
              ),
              FadeAnimation(
                1.1,
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 6,
                    bottom: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[200],
                  ),
                  child: MyTextButton(
                    myCategory: 'Air',
                    myTS: outhersStyle(),
                    myPadding: 10,
                    myOnTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
