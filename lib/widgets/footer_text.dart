import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  final String footerText;
  final String linkText;
  final VoidCallback onPress;
  const FooterText(
      {super.key,
      required this.footerText,
      required this.linkText,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          footerText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            linkText,
            style: const TextStyle(
              color: Color(0xFF35C2C1),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
