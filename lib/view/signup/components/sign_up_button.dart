import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(3))),
                              backgroundColor: const MaterialStatePropertyAll(
                                Colors.black,
                              )),
                          onPressed: () {},
                          child: const Text(
                            "Sign up",
                            style: TextStyle(color: Colors.white),
                          )))
                ],
              );
  }
}