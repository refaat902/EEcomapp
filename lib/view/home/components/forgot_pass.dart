import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.check_box),
            SizedBox(
              width: width * .02,
            ),
            const Text(
              "Remember me",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Forgot password",
              style: TextStyle(color: Colors.grey[700]),
            ))
      ],
    );
  }
}
