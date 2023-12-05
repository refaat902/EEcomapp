import 'package:ec/controller/category_controller.dart';
import 'package:ec/view/category/components/gridview_category.dart';
import 'package:ec/view/category/components/search_categories.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  static const String route = "Category";
  final CategoryController categoryController = CategoryController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 20, left: 5, right: 5),
          child: Column(
            children: [
              const SearchCategories(),
              SizedBox(
                height: height * .02,
              ),
              Categories(categoryController: categoryController),
            ],
          ),
        ),
      ),
    );
  }
}
