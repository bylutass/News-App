//import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:news_app/res/consts/colors.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controller/news_details_controller.dart';

class NewsDetailPage extends GetView<NewsDetailsController> {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: context.screenHeight * 0.3,
            color: Colors.red,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share,
                        color: AppColors.white,
                      )),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding:
                  EdgeInsets.fromLTRB(12, context.screenHeight * 0.3, 12, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.heightBox,
                  Row(
                    children: [
                      CategoryCard(
                        title: "Economy",
                        color: AppColors.lightText.withOpacity(0.5),
                        textColor: AppColors.primaryText,
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_outline)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.bookmark_outline)),
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.calendar_today_outlined,
                              color: AppColors.secondaryText, size: 16),
                          5.widthBox,
                          Text("9 May, 24",
                              style: AppStyles.regular(
                                  size: 12, color: AppColors.secondaryText)),
                        ],
                      ),
                      10.widthBox,
                      Row(
                        children: [
                          const Icon(Icons.speed,
                              color: AppColors.secondaryText, size: 16),
                          5.widthBox,
                          Text("1 min read",
                              style: AppStyles.regular(
                                  size: 12, color: AppColors.secondaryText)),
                        ],
                      ),
                    ],
                  ),
                  10.heightBox,
                  Text(
                    "Details Title".allWordsCapitilize(),
                    style: AppStyles.semiBold(size: 16),
                  ),
                  5.heightBox,
                  VxBox()
                      .size(context.screenWidth * 0.4, 5)
                      .rounded
                      .color(AppColors.primaryButton)
                      .make()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
