import 'package:day15_shoes/Animation/FadeAnimation.dart';
import 'package:day15_shoes/ui/screens/air.dart';
import 'package:day15_shoes/ui/screens/footBall.dart';
import 'package:day15_shoes/ui/screens/running.dart';
import 'package:day15_shoes/ui/screens/shosedetail.dart';
import 'package:day15_shoes/ui/screens/snekars.dart';
import 'package:day15_shoes/ui/widget/categoryButton.dart';
import 'package:day15_shoes/ui/widget/myDrawer.dart';
import 'package:day15_shoes/ui/widget/myTextStyle.dart';
import 'package:day15_shoes/ui/widget/myappbar.dart';
import 'package:day15_shoes/ui/widget/shoeCard.dart';
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
      body: SingleChildScrollView(
    
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 60, left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 7),
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
                          myCategory: 'All',
                          myTS: allStyle(),
                          myPadding: 13,
                          myOnTap: () {},
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
              imageUrl: 'assets/images/one.jpg',
              myTimeAnimation: 2,
              myCategoryName: 'Run',
              myPrice: '60',
              myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl: 'assets/images/one.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/two.jpg',
              myTimeAnimation: 1,
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
              myTimeAnimation: 1,
              myCategoryName: 'Sneakers',
              myPrice: '100',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/three.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/six.jpg',
              myTimeAnimation: 1,
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
              imageUrl: 'assets/images/seven.jpg',
              myTimeAnimation: 1,
              myCategoryName: 'Sneakers',
              myPrice: '100',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/seven.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/eight.jpg',
              myTimeAnimation: 1,
              myCategoryName: 'Jordon',
              myPrice: '130',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (conext) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/eight.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/nine.jpg',
              myTimeAnimation: 1,
              myCategoryName: 'Jordon',
              myPrice: '130',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/nine.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/ten.jpg',
              myTimeAnimation: 1,
              myCategoryName: 'Sneakers',
              myPrice: '100',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/ten.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/eleven.jpg',
              myTimeAnimation: 1,
              myCategoryName: 'Air',
              myPrice: '160',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/eleven.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/AirJordan.jpg',
              myTimeAnimation: 1,
              myCategoryName: 'Jordon',
              myPrice: '130',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/AirJordan.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/Airjordan2.jpg',
              myTimeAnimation: 1,
              myCategoryName: 'Jordon',
              myPrice: '130',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/Airjordan2.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/football1.jpg',
              myTimeAnimation: 1,
              myCategoryName: 'Football',
              myPrice: '200',
               myontap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ShoseDitale(
                    imageUrl:  'assets/images/football1.jpg',
                  );
                },
              )),
            ),
            ShoesCards(
              imageUrl: 'assets/images/running2.jpg',
              myTimeAnimation: 1,
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
