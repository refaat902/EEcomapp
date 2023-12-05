import 'package:flutter/material.dart';

class SearchCategories extends StatelessWidget {
  const SearchCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Search Category",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        border: InputBorder.none)),
              );
  }
}