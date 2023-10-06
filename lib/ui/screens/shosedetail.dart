import 'package:day15_shoes/Animation/FadeAnimation.dart';
import 'package:day15_shoes/ui/widget/mcb.dart';
import 'package:day15_shoes/ui/widget/myTextStyle.dart';
import 'package:flutter/material.dart';

class ShoseDitale extends StatefulWidget {
  final String imageUrl;
  const ShoseDitale({
    super.key,
    required this.imageUrl,
  });

  @override
  State<ShoseDitale> createState() => _ShoseDitaleState();
}

class _ShoseDitaleState extends State<ShoseDitale> {
  bool onClick1 = false;
  bool onClick2 = false;
  bool onClick3 = false;
  bool onClick4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              widget.imageUrl,
              fit: BoxFit.cover,
            ),
            height: double.infinity,
            width: double.infinity,
          ),
          //back button
          Positioned(
            left: 20,
            top: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          // favoorite button
          Positioned(
            right: 20,
            top: 50,
            child: FadeAnimation(
              1.1,
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(
                  child: Icon(Icons.favorite_border, size: 20),
                ),
              ),
            ),
          ),
          // buy button
          Positioned(
            bottom: 45,
            left: 20,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 50,
                    blurRadius: 20,
                    offset: Offset(0, 30), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Buy Now',
                  style: buttonTextStyle(),
                ),
              ),
              height: 55,
            ),
          ),
          //nike text
          Positioned(
            bottom: 250,
            left: 20,
            child: FadeAnimation(
              1.1,
              Text(
                'Nike',
                style: bigNikeStyle(),
              ),
            ),
          ),
          //size text
          Positioned(
            bottom: 200,
            left: 20,
            child: FadeAnimation(
              1.1,
              Text(
                'Size',
                style: sizeStyle(),
              ),
            ),
          ),
          Positioned(
            bottom: 135,
            left: 30,
            child: FadeAnimation(
              1.1,
              Row(
                children: [
                  SizeButtons(
                    mynum: '38',
                    myOnTap: () {
                      setState(() {
                        onClick1 = !onClick1;
                        onClick2 = false;
                        onClick3 = false;
                        onClick4 = false;
                      });
                    },
                    myBool: onClick1,
                  ),
                  SizedBox(width: 20),
                  SizeButtons(
                    mynum: '40',
                    myOnTap: () {
                      setState(() {
                        onClick1 = false;
                        onClick2 = !onClick2;
                        onClick3 = false;
                        onClick4 = false;
                      });
                    },
                    myBool: onClick2,
                  ),
                  SizedBox(width: 20),
                  SizeButtons(
                    mynum: '42',
                    myOnTap: () {
                      setState(() {
                        onClick1 = false;
                        onClick2 = false;
                        onClick3 = !onClick3;
                        onClick4 = false;
                      });
                    },
                    myBool: onClick3,
                  ),
                  SizedBox(width: 20),
                  SizeButtons(
                    mynum: '44',
                    myOnTap: () {
                      setState(() {
                        onClick1 = false;
                        onClick2 = false;
                        onClick3 = false;
                        onClick4 = !onClick4;
                      });
                    },
                    myBool: onClick4,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
