import 'package:first_sdk/screens/password_success_screen.dart';
import 'package:first_sdk/widgets/custom_button.dart';
import 'package:first_sdk/widgets/custom_text_input.dart';
import 'package:first_sdk/widgets/header_text.dart';
import 'package:flutter/material.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const HeaderText(
                    title: "Create new password",
                    fontWeight: FontWeight.w700,
                    fontSize: 30)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: HeaderText(
              title:
                  "Your new password must be unique from those previous used.",
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
              child:
                  CustomTextInput(hintText: "New Password", isPassword: true)),
          const SizedBox(
            height: 20,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child:
                  CustomTextInput(hintText: "Old Password", isPassword: true)),
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
                                  builder: (context) =>
                                      const PasswordSuccessScreen()));
                        },
                        bgColor: const Color(0xFF1E232C),
                        textColor: Colors.white,
                        title: "Reset Password",
                        isOutline: false)),
              ],
            ),
          ),
        ]));
  }
}
