import 'package:ec/view/verification/components/otp.dart';
import 'package:ec/view/verification/components/otp_again.dart';
import 'package:ec/view/verification/components/verify_button.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});
  static const String route = "Verification";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin:
              const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Verification",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Text("Please enter the OTP code sent to you by SMS")
                ],
              ),
              SizedBox(
                height: height * .1,
              ),
              OTP(),
              OTPAgain(),
              SizedBox(
                height: height * .49,
              ),
              VerifyButton(),
            ],
          ),
        ),
      ),
    );
  }
}
