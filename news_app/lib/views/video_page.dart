//import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/video_controller.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';
//import '../controller/profile_controller.dart';

class VideoPage extends GetView<VideoController> {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(VideoController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.videoArticles,
          style: AppStyles.semiBold(size: 16),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  controller.onArticleTapped();
                },
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white),
                  margin: const EdgeInsets.only(bottom: 8),
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: context.screenWidth,
                        color: Colors.green,
                        height: 130,
                        child: Stack(
                          children: [
                            Transform.scale(
                              scale: 2,
                              child: const Icon(Icons.play_circle,
                                  color: AppColors.white),
                            ),
                          ],
                        ),
                      ),
                      10.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Video".allWordsCapitilize(),
                              style: AppStyles.semiBold(),
                            ),
                            5.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_today_outlined,
                                        color: AppColors.secondaryText,
                                        size: 16),
                                    5.widthBox,
                                    Text("9 May, 24",
                                        style: AppStyles.regular(
                                            size: 12,
                                            color: AppColors.secondaryText)),
                                  ],
                                ),
                                10.widthBox,
                                Row(
                                  children: [
                                    const Icon(Icons.favorite,
                                        color: AppColors.secondaryText,
                                        size: 16),
                                    5.widthBox,
                                    Text("23",
                                        style: AppStyles.regular(
                                            size: 12,
                                            color: AppColors.secondaryText)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
