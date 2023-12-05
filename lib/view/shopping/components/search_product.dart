import 'package:flutter/material.dart';

class SearchProduct extends StatelessWidget {
  const SearchProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width*.6,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search Product",
                        prefixIcon: Icon(Icons.search,color: Colors.black,),
                        border: InputBorder.none),
                    ),
                  ),
                ),
                Row(children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.shopping_cart,color: Colors.black,size: 25,),),
                    SizedBox(width: width*.02,),
                    const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.notifications,color: Colors.black,size: 25,),)
                ],),
              ],
            );
  }
}