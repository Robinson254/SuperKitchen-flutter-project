import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  double? letterSpacing;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  String? fontFamily;
  TextAlign? textAlign;
  TextDecoration? textDecoration;

  CustomText({super.key, required this.text, this.color, this.fontSize, this.fontWeight, this.letterSpacing, this.fontFamily, this.textAlign, this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? "PlayfairDisplay",
        fontSize: fontSize ?? 16,
        color: Colors.grey[900],
        letterSpacing: letterSpacing ?? 0,
        fontWeight: fontWeight ?? FontWeight.normal,
        decoration: textDecoration ?? TextDecoration.none,
      ),
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}