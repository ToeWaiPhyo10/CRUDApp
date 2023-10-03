import 'package:first_sdk/screens/create_password_screen.dart';
import 'package:first_sdk/widgets/custom_button.dart';
import 'package:first_sdk/widgets/footer_text.dart';
import 'package:first_sdk/widgets/header_text.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    PinTheme defaultTheme = PinTheme(
        height: 75,
        width: 75,
        textStyle: const TextStyle(fontSize: 25),
        decoration: BoxDecoration(
            color: const Color(0xFFF7F8F9),
            border: Border.all(color: const Color(0xFFE8ECF4)),
            borderRadius: BorderRadius.circular(8)));
    PinTheme focusedTheme = PinTheme(
        height: 75,
        width: 75,
        textStyle: const TextStyle(fontSize: 25),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFF36C2C1)),
            borderRadius: BorderRadius.circular(8)));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const HeaderText(
                    title: "OTP Verification",
                    fontWeight: FontWeight.w700,
                    fontSize: 30)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: HeaderText(
              title:
                  "Enter the verification code we just sent on your email address.",
              fontWeight: FontWeight.w500,
              fontSize: 16,
              textColor: Color(0xFF8391A1),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  child: Pinput(
                defaultPinTheme: defaultTheme,
                focusedPinTheme: focusedTheme,
                submittedPinTheme: focusedTheme,
              ))
            ],
          ),
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
                                      const CreatePassword()));
                        },
                        bgColor: const Color(0xFF1E232C),
                        textColor: Colors.white,
                        title: "Verify",
                        isOutline: false)),
              ],
            ),
          ),
          const Spacer(),
          FooterText(
              footerText: "Didn't received code? ",
              linkText: "Resend",
              onPress: () {})
        ]),
      ),
    );
  }
}
