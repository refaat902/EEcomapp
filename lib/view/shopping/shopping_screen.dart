import 'package:ec/controller/best_controller.dart';
import 'package:ec/controller/featured_controller.dart';
import 'package:ec/controller/shopping_controller.dart';
import 'package:ec/view/shopping/components/best.dart';
import 'package:ec/view/shopping/components/featured.dart';
import 'package:ec/view/shopping/components/search_product.dart';
import 'package:ec/view/shopping/components/special_for_you.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  ShoppingScreen({super.key});
  static const String route = "Shopping";
  final ShoppingController shoppingController = ShoppingController();
  final FeaturedController featuredController = FeaturedController();
  final BestController bestController = BestController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;

    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 5, right: 5, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchProduct(),
              SizedBox(
                height: height * .03,
              ),
              SpecialForYou(shoppingController: shoppingController),
              SizedBox(
                height: height * .03,
              ),
              Featured(featuredController: featuredController),
              SizedBox(
                height: height * .03,
              ),
              Best(bestController: bestController),
            ],
          ),
        ),
      ),
    ));
  }
}
