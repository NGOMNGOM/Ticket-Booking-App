import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Style {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFF526799);
  static TextStyle textStlye =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStlye =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStlye2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStlye3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStlye4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.bold);
}
