import 'package:first_sdk/screens/login_screen.dart';
import 'package:first_sdk/screens/otp_screen.dart';
import 'package:first_sdk/widgets/custom_button.dart';
import 'package:first_sdk/widgets/custom_text_input.dart';
import 'package:first_sdk/widgets/footer_text.dart';
import 'package:first_sdk/widgets/header_text.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const HeaderText(
                      title: "Forgot Password?",
                      fontWeight: FontWeight.w700,
                      fontSize: 30)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: HeaderText(
                title:
                    "Don't worry! It occurs.Please enter the email address linked with your account.",
                fontWeight: FontWeight.w500,
                fontSize: 16,
                textColor: Color(0xFF8391A1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextInput(
                    hintText: "Enter your email", isPassword: false)),
            const SizedBox(
              height: 40,
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
                                    builder: (context) => const OTPScreen()));
                          },
                          bgColor: const Color(0xFF1E232C),
                          textColor: Colors.white,
                          title: "Send Code",
                          isOutline: false)),
                ],
              ),
            ),
            const Spacer(),
            FooterText(
                footerText: "Remember Password? ",
                linkText: "Login",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                })
          ],
        ),
      ),
    );
  }
}
