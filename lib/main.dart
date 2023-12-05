import 'package:ec/view/category/category_screen.dart';
import 'package:ec/view/home/home_screen.dart';
import 'package:ec/view/shopping/shopping_screen.dart';
import 'package:ec/view/signup/signup_screen.dart';
import 'package:ec/view/splash/splash_screen.dart';
import 'package:ec/view/verification/verification_screen.dart';
import 'package:flutter/material.dart';

// git hub comment
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SPlashScreen.route,
      routes: {
        SPlashScreen.route: (context) => const SPlashScreen(),
        HomeScreen.route: (context) => const HomeScreen(),
        SignUpScreen.route: (context) => const SignUpScreen(),
        VerificationScreen.route: (context) => const VerificationScreen(),
        ShoppingScreen.route: (context) => ShoppingScreen(),
        CategoryScreen.route: (context) => CategoryScreen(),
      },
    );
  }
}
