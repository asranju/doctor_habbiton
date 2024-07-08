import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habbiton_doctors_app/utils/app_color.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final Color textColor;
  final FontStyle fontStyle;
  final TextDecoration textDecoration;
  final Color textDecorationColor;
  final int flag;
  final int maxLines;
  const CommonText(
      {Key? key,
        required this.text,
        this.fontSize = 16,
        this.fontWeight = FontWeight.w600,
        this.textAlign = TextAlign.left,
        this.textColor = Colors.black,
        this.fontStyle = FontStyle.normal,
        this.textDecoration = TextDecoration.none,
        this.textDecorationColor = AppColors.lightGrey,
        this.flag = 1,
        this.maxLines = 3})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: textColor,
            fontStyle: fontStyle,
            backgroundColor: Colors.transparent,
            decoration: textDecoration,
            decorationColor: textDecorationColor),
        maxLines: maxLines,
      ),
    );
  }
}