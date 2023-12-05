import 'package:flutter/material.dart';

class OTPAgain extends StatelessWidget {
  const OTPAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Didn't get a code?",style: TextStyle(fontWeight: FontWeight.bold),),
                TextButton(onPressed: (){}, child: Text("Send again",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold),))],
              );
  }
}