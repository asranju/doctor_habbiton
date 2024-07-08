import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color activeBackgroundColor;
  final Color normalBackgroundColor;
  final Color activeButtonTextColor;
  final Color normalButtonTextColor;
  final Color normalButtonOverlayColor;
  final Color activeButtonOverlayColor;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final double height;
  final double width;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isActiveButton;
  final Widget widget;

  const CommonButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.isActiveButton,
    this.activeBackgroundColor = const Color(0xff30A945),
    this.normalBackgroundColor = Colors.white,
    this.activeButtonTextColor = Colors.white,
    this.normalButtonTextColor = const Color(0xff30A945),
    this.activeButtonOverlayColor = const Color(0xff30A945),
    this.normalButtonOverlayColor = const Color(0xff30A945),
    this.borderRadius = 10.0,
    this.height = 50.0,
    this.width = double.infinity,
    this.borderColor = const Color(0xff30A945),
    this.borderWidth = 1.0,
    this.fontSize = 15,
    this.fontWeight = FontWeight.w600,
    this.widget = const Text("")
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: !isActiveButton ? borderColor : Colors.transparent,
            width: !isActiveButton ? borderWidth : 0,
          )
      ),
      child: ElevatedButton(
        onPressed: onPressed,

        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          overlayColor: MaterialStateProperty.all(isActiveButton ? activeButtonOverlayColor : normalButtonOverlayColor),
          backgroundColor: MaterialStateProperty.all(isActiveButton ? activeBackgroundColor : normalBackgroundColor,),
          foregroundColor: MaterialStateProperty.all(isActiveButton ? activeButtonTextColor : normalButtonTextColor,),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius))),
        ),

        child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          widget,
           SizedBox(width: widget==const Text("")?0:2,),
          Text(text,
          style: TextStyle(
            fontFamily:'Roboto',
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        )]),
      ),
    );
  }
}