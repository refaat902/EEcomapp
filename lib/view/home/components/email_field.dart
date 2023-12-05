import 'package:flutter/material.dart';

class EmailFiald extends StatelessWidget {
  const EmailFiald({super.key});
  
 
  @override
  Widget build(BuildContext context) {
    return Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email Address",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "e.g name@example.com"),
                        ),
                      ),
                    ),
                  ],
                );
  }
}