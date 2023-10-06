import 'package:day15_shoes/Animation/FadeAnimation.dart';
import 'package:day15_shoes/ui/screens/air.dart';
import 'package:day15_shoes/ui/screens/footBall.dart';
import 'package:day15_shoes/ui/screens/home.dart';
import 'package:day15_shoes/ui/screens/running.dart';
import 'package:day15_shoes/ui/screens/shosedetail.dart';
import 'package:day15_shoes/ui/widget/categoryButton.dart';
import 'package:day15_shoes/ui/widget/myDrawer.dart';
import 'package:day15_shoes/ui/widget/myTextStyle.dart';
import 'package:day15_shoes/ui/widget/myappbar.dart';
import 'package:day15_shoes/ui/widget/shoeCard.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class Sneakars extends StatefulWidget {
  const Sneakars({super.key});

  @override
  State<Sneakars> createState() => _SneakarsState();
}

class _SneakarsState extends State<Sneakars> {
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
                    SizedBox(width: 20),
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
                    FadeAnimation(
                      1.1,
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 6,
                          bottom: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[200],
                        ),
                        child: MyTextButton(
                          myCategory: 'Sneakers',
                          myTS: outhersStyle(),
                          myPadding: 10,
                          myOnTap: () {},
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
              imageUrl: 'assets/images/two.jpg',
              myTimeAnimation: 1.1,
              myCategoryName: 'Sneakers',
              myPrice: '100',
              myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl: 'assets/images/two.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/three.jpg',
              myTimeAnimation: 1.2,
              myCategoryName: 'Sneakers',
              myPrice: '100',
              myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl: 'assets/images/three.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/seven.jpg',
              myTimeAnimation: 1.3,
              myCategoryName: 'Sneakers',
              myPrice: '100',
              myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl: 'assets/images/seven.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/ten.jpg',
              myTimeAnimation: 1.4,
              myCategoryName: 'Sneakers',
              myPrice: '100',
              myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl: 'assets/images/ten.jpg',
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
