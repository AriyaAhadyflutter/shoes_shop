import 'package:day15_shoes/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class ShoesCards extends StatefulWidget {
  final String imageUrl;
  final void Function()? myontap;
  final double myTimeAnimation;
  final String myCategoryName;
  final String myPrice;
  const ShoesCards({
    super.key,
    required this.imageUrl,
    this.myontap,
    required this.myTimeAnimation,
    required this.myCategoryName,
    required this.myPrice,
  });

  @override
  State<ShoesCards> createState() => _ShoesCardsState();
}

class _ShoesCardsState extends State<ShoesCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 13, left: 13, bottom: 10),
      child: GestureDetector(
        onTap: widget.myontap,
        child: FadeAnimation(
          widget.myTimeAnimation,
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        widget.imageUrl,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        bottom: 20,
                        left: 15,
                        child: FadeAnimation(
                          1.1,
                          Text(
                            '${widget.myPrice}$dollor',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 55,
                        left: 20,
                        child: FadeAnimation(
                          1.1,
                          Text(
                            widget.myCategoryName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: FadeAnimation(
                          1.1,
                          Text(
                            'Nike',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 20,
                        child: FadeAnimation(
                          1.1,
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                            width: 37,
                            height: 37,
                            child: Center(child: Icon(Icons.favorite_border)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String dollor = r'$';
