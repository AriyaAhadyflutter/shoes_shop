import 'package:day15_shoes/Animation/FadeAnimation.dart';
import 'package:day15_shoes/ui/widget/myTextStyle.dart';
import 'package:flutter/material.dart';


String dollor = r'$';


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
        child: Card(
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
                         widget.myTimeAnimation,
                         Text(
                           '${widget.myPrice}$dollor',
                           style: priceStyle(),
                         ),
                       ),
                     ),
                     Positioned(
                       top: 55,
                       left: 20,
                       child: FadeAnimation(
                         widget.myTimeAnimation,
                         Text(
                           widget.myCategoryName,
                           style: categoryStyle(),
                         ),
                       ),
                     ),
                     Positioned(
                       top: 20,
                       left: 20,
                       child: FadeAnimation(
                         widget.myTimeAnimation,
                         Text(
                           'Nike',
                           style: nikeStyle(),
                         ),
                       ),
                     ),
                     Positioned(
                       top: 20,
                       right: 20,
                       child: FadeAnimation(
                         widget.myTimeAnimation,
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
    );
  }
}
