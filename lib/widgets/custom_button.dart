import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final Color? borderColor;
  final Color textColor;
  final String title;
  final bool isOutline;
  final VoidCallback onPress;
  const CustomButton(
      {super.key,
      required this.onPress,
      required this.bgColor,
      this.borderColor,
      required this.textColor,
      required this.title,
      required this.isOutline});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: bgColor,
      shape: RoundedRectangleBorder(
          side: isOutline
              ? const BorderSide(color: Color(0xFF1E232C))
              : BorderSide.none,
          borderRadius: BorderRadius.circular(8)),
      onPressed: onPress,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          title,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
      ),
    );
  }
}
