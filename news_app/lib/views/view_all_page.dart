//import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/res/consts/consts.dart';
//import 'package:news_app/res/consts/styles.dart';
import 'package:news_app/widgets/news_card.dart';
import '../controller/view_all_controller.dart';

class ViewAllPage extends GetView<ViewAllController> {
  const ViewAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Explore',
        style: AppStyles.semiBold(size: 16),
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: controller.navigateToNewsDetails,
                child: const NewsCard());
          },
        ),
      ),
    );
  }
}
