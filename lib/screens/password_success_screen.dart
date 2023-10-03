import 'package:first_sdk/screens/login_screen.dart';
import 'package:first_sdk/widgets/custom_button.dart';
import 'package:first_sdk/widgets/header_text.dart';
import 'package:flutter/material.dart';

class PasswordSuccessScreen extends StatelessWidget {
  const PasswordSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/tick.png'),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: HeaderText(
                title: "Password Changed",
                fontWeight: FontWeight.w700,
                fontSize: 30),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: HeaderText(
              title: "Your password has been changed successfully.",
              fontWeight: FontWeight.w500,
              fontSize: 16,
              textColor: Color(0xFF8391A1),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                Expanded(
                    child: CustomButton(
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        bgColor: const Color(0xFF1E232C),
                        textColor: Colors.white,
                        title: "Back to Login",
                        isOutline: false)),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
