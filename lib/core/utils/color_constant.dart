import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray90099 = fromHex('#9909101d');

  static Color lightBlue700 = fromHex('#007ad9');

  static Color red500 = fromHex('#f54336');

  static Color black9003f = fromHex('#3f101010');

  static Color gray80000 = fromHex('#003a3a3a');

  static Color gray50 = fromHex('#f9f9f9');
  //static Color gray50 = fromHex('#590000');

  static Color black9001e = fromHex('#1e101010');

  static Color gray700A2 = fromHex('#a2616161');

  static Color bluegray9001e = fromHex('#1e303030');

  static Color black903 = fromHex('#000000');

  static Color black900 = fromHex('#101010');

  static Color yellow700 = fromHex('#ffc02d');

  static Color black9001e1 = fromHex('#1e0f0f0f');

  static Color gray804 = fromHex('#404040');

  static Color gray600 = fromHex('#757575');

  static Color gray700 = fromHex('#616161');

  static Color gray502 = fromHex('#9e9e9e');

  static Color gray601 = fromHex('#797979');

  static Color gray400 = fromHex('#bdbdbd');

  static Color gray500 = fromHex('#590000');
  //static Color gray500 = fromHex('#ada985');

  static Color gray800 = fromHex('#35383f');
  static Color darkLine = fromHex('#35383f');
  static Color darkBg = fromHex('#181A20');
  static Color darkTextField = fromHex('#1F222A');

  static Color gray503 = fromHex('#b0aa79');

  static Color redA200 = fromHex('#f75555');

  static Color gray701 = fromHex('#7a5548');

  static Color blue500 = fromHex('#2aa4f4');

  static Color gray900 = fromHex('#212121');

  static Color gray801 = fromHex('#424242');

  static Color gray504 = fromHex('#9f9f9f');

  static Color gray702 = fromHex('#605f51');

  static Color black9000c = fromHex('#0c04060f');

  static Color gray200 = fromHex('#e7e7e7');

  static Color gray101 = fromHex('#f5f5f5');

  static Color gray201 = fromHex('#eeeeee');

  static Color gray300 = fromHex('#e0e0e0');

  static Color gray100 = fromHex('#f3f3f3');

  static Color bluegray900 = fromHex('#303030');

  static Color bluegray500 = fromHex('#607d8a');

  static Color black9003f1 = fromHex('#3f000000');

  static Color black90014 = fromHex('#1404060f');

  static Color gray6001e = fromHex('#1e757575');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90015 = fromHex('#14101010');

  static Color bluegray901 = fromHex('#2b2b2b');

  // static Color transparent = Colors.transparent;
  // static Color kPrimaryColor = Color(0xFF590000);
  // static Color kPrimarygreyColor = Color(0xFF742a2a);
  // static Color kBlueLang = Color(0xFF1b7ab0);
  // static Color grey = Colors.grey;
  // static Color grey3 = Colors.grey.shade300;
  // static Color grey2 = Colors.grey.shade100;
  // static Color white = Colors.white;
  // static Color green = Colors.green;
  // static Color black = Colors.black;
  // static Color red = Colors.red;
  // static Color blue = Colors.blue;

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
