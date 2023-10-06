import 'package:flutter/material.dart';

TextStyle DrawerStyle() {
  return TextStyle(fontSize: 17);
}

TextStyle outhersStyle() {
  return TextStyle(fontSize: 16);
}

TextStyle allStyle() {
  return TextStyle(
    fontSize: 20,
    color: Colors.black,
  );
}

TextStyle categoryStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 20,
  );
}

TextStyle priceStyle() {
  return TextStyle(
      color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);
}

TextStyle nikeStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
}

TextStyle buttonTextStyle() {
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
}

TextStyle bigNikeStyle() {
  return TextStyle(
    fontSize: 45,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
}

TextStyle sizeStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}

TextStyle numberSizeStyle(Color myColor) {
  return TextStyle(
    color: myColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
