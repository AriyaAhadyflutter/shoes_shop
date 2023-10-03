// کلاس کتگوری ها

import 'package:day15_shoes/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatefulWidget {
  final String myCategory;
  final TextStyle myTS;
  final double myPadding;
  final void Function()? myOnTap;
  const MyTextButton({
    super.key,
    required this.myCategory,
    required this.myTS,
    required this.myPadding,
    this.myOnTap,
  });

  @override
  State<MyTextButton> createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      1.1,
      Padding(
        padding: EdgeInsets.only(right: widget.myPadding),
        child: GestureDetector(
          onTap: widget.myOnTap,
          child: Text(
            widget.myCategory,
            style: widget.myTS,
          ),
        ),
      ),
    );
  }
}
