import 'package:first_sdk/screens/login_screen.dart';
import 'package:first_sdk/widgets/custom_button.dart';
import 'package:first_sdk/widgets/custom_text_input.dart';
import 'package:first_sdk/widgets/footer_text.dart';
import 'package:first_sdk/widgets/header_text.dart';
import 'package:first_sdk/widgets/login_method.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        backgroundColor: Colors.white,
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
                      title: "Hello! Register to get started",
                      fontWeight: FontWeight.w700,
                      fontSize: 30)),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextInput(
                  hintText: "Username",
                  isPassword: false,
                )),
            const SizedBox(
              height: 15,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextInput(hintText: "Email", isPassword: false)),
            const SizedBox(
              height: 15,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextInput(hintText: "Password", isPassword: true)),
            const SizedBox(
              height: 15,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextInput(
                    hintText: "Confirm password", isPassword: true)),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  Expanded(
                      child: CustomButton(
                          onPress: () {},
                          bgColor: const Color(0xFF1E232C),
                          textColor: Colors.white,
                          title: "Register",
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
                    child: Text("or Register with"),
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
                          imageUrl: Image.asset(
                            'assets/fb.png',
                            height: 32,
                          ),
                          onPress: () {})),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: LoginMethod(
                          imageUrl: Image.asset(
                            'assets/google.png',
                            height: 32,
                          ),
                          onPress: () {})),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: LoginMethod(
                          imageUrl: Image.asset(
                            'assets/apple.png',
                            height: 32,
                          ),
                          onPress: () {})),
                ],
              ),
            ),
            const Spacer(),
            FooterText(
                footerText: "Already have an account? ",
                linkText: "Login",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                })
          ],
        )));
  }
}
