import 'package:day15_shoes/Animation/FadeAnimation.dart';
import 'package:day15_shoes/ui/screens/air.dart';
import 'package:day15_shoes/ui/screens/footBall.dart';
import 'package:day15_shoes/ui/screens/home.dart';
import 'package:day15_shoes/ui/screens/shosedetail.dart';
// import 'package:day15_shoes/ui/screens/home.dart';
import 'package:day15_shoes/ui/screens/snekars.dart';
import 'package:day15_shoes/ui/widget/categoryButton.dart';
import 'package:day15_shoes/ui/widget/myDrawer.dart';
import 'package:day15_shoes/ui/widget/myTextStyle.dart';
import 'package:day15_shoes/ui/widget/myappbar.dart';
import 'package:day15_shoes/ui/widget/shoeCard.dart';
import 'package:flutter/material.dart';

class Running extends StatefulWidget {
  const Running({super.key});

  @override
  State<Running> createState() => _RunningState();
}

class _RunningState extends State<Running> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
           
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 60, left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    MyTextButton(
                      myCategory: 'All',
                      myTS: allStyle(),
                      myPadding: 13,
                      myOnTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Home();
                          },
                        ),
                      ),
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
                    FadeAnimation(
                      1.1,
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        padding: EdgeInsets.only(
                          left: 7,
                          right: 5,
                          top: 6,
                          bottom: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[200],
                        ),
                        child: MyTextButton(
                          myCategory: 'Running',
                          myTS: outhersStyle(),
                          myPadding: 10,
                          myOnTap: () {},
                        ),
                      ),
                    ),
                    MyTextButton(
                      myCategory: 'Air',
                      myTS: outhersStyle(),
                      myPadding: 13,
                      myOnTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Air();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                SizedBox(height: 20),
                  ShoesCards(
              imageUrl: 'assets/images/one.jpg',
              myTimeAnimation: 1.1,
              myCategoryName: 'Run',
              myPrice: '60',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/one.jpg',
                  );
                },
              )),
            ),
               ShoesCards(
              imageUrl: 'assets/images/six.jpg',
              myTimeAnimation: 1.2,
              myCategoryName: 'Run',
              myPrice: '60',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/six.jpg',
                  );
                },
              )),
            ),
                ShoesCards(
              imageUrl: 'assets/images/running2.jpg',
              myTimeAnimation: 1.3,
              myCategoryName: 'Run',
              myPrice: '60',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/running2.jpg',
                  );
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
