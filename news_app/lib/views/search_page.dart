//import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:news_app/widgets/custom_textfield.dart';
import '../controller/search_controller.dart';

class SearchPage extends GetView<SearchhController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextField(
          controller: controller.searchController,
          hint: AppStrings.searchNews,
        ),
        actions: [
          IconButton(
              onPressed: controller.onCancelPressed,
              icon: const Icon(Icons.close))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 3,
              child: const Icon(
                Icons.search,
                color: AppColors.darkGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
