import 'package:ec/controller/category_controller.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.categoryController});
  final CategoryController categoryController;

  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height * .77,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: categoryController.categories.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Stack(children: [
                Image.asset(categoryController.categories[index].image!),
                Positioned(
                    top: height * .01,
                    left: width * .02,
                    child: Text(
                      categoryController.categories[index].name!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ))
              ]),
            );
          }),
    );
  }
}
