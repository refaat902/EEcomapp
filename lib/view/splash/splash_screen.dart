import 'package:ec/view/home/home_screen.dart';
import 'package:flutter/material.dart';

class SPlashScreen extends StatelessWidget {
  const SPlashScreen({super.key});
  static const String route = "splash_screen";

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.route);
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: width * .2,
                child: Image.asset("assets/images/tick.png")),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ecommerce Theme",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
