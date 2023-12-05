import 'package:ec/view/home/components/email_field.dart';
import 'package:ec/view/home/components/forgot_pass.dart';
import 'package:ec/view/home/components/login_button.dart';
import 'package:ec/view/home/components/login_with.dart';
import 'package:ec/view/home/components/pass_field.dart';
import 'package:ec/view/home/components/signup.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String route = "Home";

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
                    "Welcome back!",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [Text("Login to youe existing account")],
              ),
              SizedBox(
                height: height * .02,
              ),
              SizedBox(
                  width: width * .2,
                  child: Image.asset("assets/images/tick.png")),
              const EmailFiald(),
              SizedBox(
                height: height * .02,
              ),
              const PassField(),
              const ForgotPass(),
              SizedBox(
                height: height * .05,
              ),
              const LogInButton(),
              SizedBox(
                height: height * .05,
              ),
              const LogInWith(),
              SizedBox(
                height: height * .1,
              ),
             const SignUp(),
            ],
          )),
        ),
      ),
    );
  }
}
