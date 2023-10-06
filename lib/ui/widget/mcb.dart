import 'package:day15_shoes/ui/widget/myTextStyle.dart';
import 'package:flutter/material.dart';

class SizeButtons extends StatelessWidget {
  final String mynum;
  final VoidCallback myOnTap;
  final bool myBool;

  const SizeButtons({
    super.key,
    required this.mynum,
    required this.myOnTap,
    required this.myBool,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myOnTap,
      child: Container(
        width: 45,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: myBool ? Colors.white : Colors.transparent,
        ),
        child: Center(
          child: Text(
            mynum,
            style: numberSizeStyle(myBool ? Colors.black : Colors.white),
          ),
        ),
      ),
    );
  }
}
