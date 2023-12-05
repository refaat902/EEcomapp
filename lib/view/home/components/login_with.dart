import 'package:flutter/material.dart';

class LogInWith extends StatelessWidget {
  const LogInWith({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/googlee.png",
              width: width * .09,
            )),
        SizedBox(
          width: width * .03,
        ),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/facebook.png",
              width: width * .09,
            )),
      ],
    );
  }
}
