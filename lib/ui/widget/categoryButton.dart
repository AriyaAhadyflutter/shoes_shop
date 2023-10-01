import 'package:flutter/material.dart';

class MyTextButton extends StatefulWidget {
  final String myCategory;
  final TextStyle myTS;
  final double myPadding;
  const MyTextButton({
    super.key,
    required this.myCategory,
    required this.myTS,
    required this.myPadding,
  });

  @override
  State<MyTextButton> createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: widget.myPadding),
      child: Text(
        widget.myCategory,
        style: widget.myTS,
      ),
    );
  }
}
