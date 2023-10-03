import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  const CustomTextInput(
      {super.key, required this.hintText, required this.isPassword});

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  bool _isVisible = false;
  void handleVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFF7F8F9),
          border: Border.all(color: const Color(0xFFE8ECF4)),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: TextFormField(
          obscureText: widget.isPassword && !_isVisible && true,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              suffixIcon: widget.isPassword
                  ? GestureDetector(
                      onTap: handleVisible,
                      child: Icon(
                        _isVisible ? Icons.visibility : Icons.visibility_off,
                        color: const Color(0xFF8391A1),
                      ),
                    )
                  : null),
        ),
      ),
    );
  }
}
