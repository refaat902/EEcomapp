import 'package:ec/controller/best_controller.dart';
import 'package:ec/view/category/category_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Best extends StatelessWidget {
  Best({super.key, required this.bestController});
  BestController bestController;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Featured Products",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, CategoryScreen.route);
                },
                child: Text(
                  "see more",
                  style: TextStyle(color: Colors.grey[600]),
                ))
          ],
        ),
        SizedBox(
          height: height * .3,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bestController.featuredproduct.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width * .38,
                      height: height * .2,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey),
                      child: Stack(
                        children: [
                          Image.asset(
                              bestController.featuredproduct[index].image!),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5)),
                                      color: Colors.white),
                                  child: const Icon(Icons.heart_broken))),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    Text(
                      bestController.featuredproduct[index].name!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      bestController.featuredproduct[index].price.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                );
              }),
        ),
      ],
    );
  }
}
