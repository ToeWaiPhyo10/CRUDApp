import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  const HeaderText({
    super.key,
    required this.title,
    required this.fontWeight,
    required this.fontSize,
    this.textColor,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: fontSize, fontWeight: fontWeight, color: textColor),
      textAlign: textAlign,
    );
  }
}
