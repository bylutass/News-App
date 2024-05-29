//import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/bookmark_controller.dart';
import 'package:news_app/res/consts/consts.dart';
//import 'package:news_app/res/consts/styles.dart';
import 'package:news_app/widgets/news_card.dart';

class BookmarkPage extends GetView<BookmarkController> {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        AppStrings.bookmark,
        style: AppStyles.semiBold(size: 16),
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  controller.navigateToNewsDetails();
                },
                child: const NewsCard());
          },
        ),
      ),
    );
  }
}
