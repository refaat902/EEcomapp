import 'package:ec/view/signup/components/email.field.dart';
import 'package:ec/view/signup/components/forgot_pass.dart';
import 'package:ec/view/signup/components/login.dart';
import 'package:ec/view/signup/components/name_field.dart';
import 'package:ec/view/signup/components/pass_filed.dart';
import 'package:ec/view/signup/components/sign_up_button.dart';
import 'package:ec/view/signup/components/sign_up_with.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const String route = "Signup";

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin:
              const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
          child: SingleChildScrollView(
              child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text("Please enter your information below to sign up")
                ],
              ),
              SizedBox(
                height: height * .02,
              ),
              SizedBox(
                  width: width * .2,
                  child: Image.asset("assets/images/tick.png")),
              const NameField(),
              SizedBox(
                height: height * .02,
              ),
              const EmailField1(),
              SizedBox(
                height: height * .02,
              ),
              const PassField1(),
             const ForgotPass1(),
              SizedBox(
                height: height * .05,
              ),
              const SignUpButton(),
              SizedBox(
                height: height * .05,
              ),
              const SignUpWith(),
              SizedBox(
                height: height * .01,
              ),
              const LogIn(),
            ],
          )),
        ),
      ),
    );
  }
}
