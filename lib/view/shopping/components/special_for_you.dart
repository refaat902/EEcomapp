import 'package:ec/controller/shopping_controller.dart';
import 'package:ec/view/category/category_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SpecialForYou extends StatelessWidget {
   SpecialForYou({super.key, required this.shoppingController});
  ShoppingController shoppingController;

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
              "Special for you",
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
          height: height * .2,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: shoppingController.products.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                  child: Stack(
                    children: [
                      Image.asset(shoppingController.products[index].image!),
                      Positioned(
                          top: height * .01,
                          left: width * .02,
                          child: Text(shoppingController.products[index].name!))
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
