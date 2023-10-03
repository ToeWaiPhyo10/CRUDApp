import 'package:first_sdk/screens/login_screen.dart';
import 'package:first_sdk/screens/register_screen.dart';
import 'package:first_sdk/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            "assets/img-3.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.55,
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/logo.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
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
                  title: "Login",
                  isOutline: false,
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: Row(
              children: [
                Expanded(
                    child: CustomButton(
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        bgColor: Colors.white,
                        borderColor: const Color(0xFF1E232C),
                        textColor: const Color(0xFF1E232C),
                        title: "Register",
                        isOutline: true)),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: const Text(
              "Continue as a guest",
              style: TextStyle(color: Color(0xFF35C2C1)),
            ),
          ),
          const Spacer()
        ],
      )),
    );
  }
}
