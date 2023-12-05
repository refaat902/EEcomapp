import 'package:flutter/material.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.circle,
                      size: 15,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  SizedBox(
                    width: width * .03,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: const Icon(
                      Icons.circle,
                      size: 15,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  SizedBox(
                    width: width * .03,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: const Icon(
                      Icons.circle,
                      size: 15,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  SizedBox(
                    width: width * .03,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: const Icon(
                      Icons.circle,
                      size: 15,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ],
              );
  }
}