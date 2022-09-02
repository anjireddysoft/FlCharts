import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key, required this.fontWeight, required this.textColor, required this.text, required this.fontSize})
      : super(key: key);
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;


  @override
  Widget build(BuildContext context) {
    return Text(
      text, style: TextStyle(fontSize:fontSize, fontWeight:fontWeight, color:textColor),
    );
  }
}
