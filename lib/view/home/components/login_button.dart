import 'package:ec/view/verification/verification_screen.dart';
import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
                    backgroundColor: const MaterialStatePropertyAll(
                      Colors.black,
                    )),
                onPressed: () {
                  Navigator.pushNamed(context, VerificationScreen.route);
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )))
      ],
    );
  }
}
