import 'package:first_sdk/screens/forgot_password_screen.dart';
import 'package:first_sdk/screens/register_screen.dart';
import 'package:first_sdk/widgets/custom_button.dart';
import 'package:first_sdk/widgets/custom_text_input.dart';
import 'package:first_sdk/widgets/footer_text.dart';
import 'package:first_sdk/widgets/header_text.dart';
import 'package:first_sdk/widgets/login_method.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const HeaderText(
                      title: "Welcome back! Glad to see you, Again",
                      fontWeight: FontWeight.w700,
                      fontSize: 30)),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextInput(
                  hintText: "Enter your email",
                  isPassword: false,
                )),
            const SizedBox(
              height: 15,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextInput(
                    hintText: "Enter your password", isPassword: true)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ForgotPasswordScreen()));
                  },
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(color: Color(0xFF6A707C)),
                  ),
                ),
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
                          title: "Login",
                          isOutline: false)),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Color(0xFFE8ECF4),
                    thickness: 1,
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("or Login with"),
                  ),
                  Expanded(
                      child: Divider(
                    color: Color(0xFFE8ECF4),
                    thickness: 1,
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: LoginMethod(
                    onPress: () {},
                    imageUrl: Image.asset(
                      'assets/fb.png',
                      height: 32,
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: LoginMethod(
                    onPress: () {},
                    imageUrl: Image.asset(
                      'assets/google.png',
                      height: 32,
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: LoginMethod(
                    onPress: () {},
                    imageUrl: Image.asset(
                      'assets/apple.png',
                      height: 32,
                    ),
                  )),
                ],
              ),
            ),
            const Spacer(),
            FooterText(
                footerText: "Don't have an account? ",
                linkText: "Register",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()));
                })
          ],
        ),
      ),
    );
  }
}
