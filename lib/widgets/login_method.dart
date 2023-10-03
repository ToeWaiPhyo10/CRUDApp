import 'package:flutter/material.dart';

class LoginMethod extends StatefulWidget {
  final Widget imageUrl;
  final VoidCallback onPress;
  const LoginMethod({super.key, required this.imageUrl, required this.onPress});

  @override
  State<LoginMethod> createState() => _LoginMethodState();
}

class _LoginMethodState extends State<LoginMethod> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE8ECF4)),
          borderRadius: BorderRadius.circular(8)),
      child: MaterialButton(
        onPressed: widget.onPress,
        child: Padding(
            padding: const EdgeInsets.all(12.0), child: widget.imageUrl),
      ),
    );
  }
}
