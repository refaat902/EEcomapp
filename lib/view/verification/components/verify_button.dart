import 'package:ec/view/shopping/shopping_screen.dart';
import 'package:flutter/material.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
                    backgroundColor: const MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  Navigator.pushNamed(context, ShoppingScreen.route);
                },
                child: const Text(
                  "verify",
                  style: TextStyle(color: Colors.white),
                )))
      ],
    );
  }
}
