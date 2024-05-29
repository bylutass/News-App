//import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/category_controller.dart';
import 'package:news_app/widgets/category_item.dart';
//import 'package:velocity_x/velocity_x.dart';
//import '../controller/profile_controller.dart';
import '../res/consts/consts.dart';

class CategoryPage extends GetView<CategoryController> {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var categoryList = [
      AppStrings.entertainment,
      AppStrings.sports,
      AppStrings.politics,
      AppStrings.travel
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.category,
          style: AppStyles.semiBold(size: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryItem(
              title: categoryList[index],
            );
          },
        ),
      ),
    );
  }
}
