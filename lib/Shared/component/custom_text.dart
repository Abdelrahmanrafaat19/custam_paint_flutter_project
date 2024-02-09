import 'package:flutter/material.dart';

Widget customText(
    {required String text,
    required Color color,
    required double fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    TextAlign? textAlign,
    double? height}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
        height: height,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily),
  );
}
