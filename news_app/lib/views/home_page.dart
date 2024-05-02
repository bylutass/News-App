//import 'package:flutter/foundation.dart';
//import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:news_app/res/consts/colors.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:news_app/res/consts/styles.dart';
//import 'package:velocity_x/velocity_x.dart';
import '../controller/home_controller.dart';
//import 'package:news_app/res/consts/strings.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var categoriesList = [
      AppStrings.explore,
      AppStrings.entertainment,
      AppStrings.sports,
      AppStrings.politics,
      AppStrings.travel
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_sharp)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: AppColors.white,
                child: Row(
                  children: List.generate(
                      categoriesList.length,
                      (index) => Column(
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(50, 30),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                onPressed: () {},
                                child: Text(
                                  categoriesList[index].capitalized,
                                  style: AppStyles.bold(
                                      color: AppColors.secondaryText),
                                ),
                              ),
                              VxBox()
                                  .size(30, 3)
                                  .color(index ==
                                          controller
                                              .currentSelectedCategoryIndex
                                      ? AppColors.primaryButton
                                      : Colors.transparent)
                                  .rounded
                                  .make()
                            ],
                          )),
                ),
              ),
            ),
            10.heightBox,
            VxSwiper.builder(
                viewportFraction: 1.0,
                itemCount: 3,
                autoPlay: true,
                onPageChanged: (index) {
                  controller.changeSwiperIndex(index);
                },
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        color: Vx.randomPrimaryColor,
                      ),
                      Positioned(
                          top: 14,
                          left: 10,
                          child: VxBox(
                                  child: Text(
                            "Sport",
                            style: AppStyles.regular(
                              color: AppColors.white,
                              size: 12,
                            ),
                          ))
                              .color(AppColors.primaryButton)
                              .padding(const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 6))
                              .roundedSM
                              .make()),
                      Positioned(
                          top: 14,
                          right: 10,
                          child: VxBox(
                                  child: Row(
                            children: [
                              const Icon(
                                Icons.favorite,
                                color: AppColors.white,
                                size: 14,
                              ),
                              4.widthBox,
                              Text(
                                "156",
                                style: AppStyles.regular(
                                  color: AppColors.white,
                                  size: 12,
                                ),
                              )
                            ],
                          ))
                              .color(Colors.black26)
                              .padding(const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 6))
                              .roundedSM
                              .make()),
                      Positioned(
                        left: 10,
                        right: 10,
                        bottom: 10,
                        child: Column(
                          children: [
                            Text(
                              "News For Example".allWordsCapitilize(),
                              style: AppStyles.regular(color: AppColors.white),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.access_time,
                                  size: 14,
                                  color: AppColors.white,
                                ),
                                5.widthBox,
                                Text("26 April, 24",
                                    style: AppStyles.regular(
                                      color: AppColors.white,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ).box.roundedSM.clip(Clip.hardEdge).make();
                }),
            10.heightBox,
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => VxBox()
                        .size(
                            index == controller.currentSwiperIndex ? 30 : 5, 5)
                        .rounded
                        .color(index == controller.currentSwiperIndex
                            ? AppColors.sliderSelectedDark
                            : AppColors.sliderDot)
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            20.heightBox,
            Row(
              children: [
                VxBox()
                    .size(5, 20)
                    .color(AppColors.primaryButton)
                    .rounded
                    .make(),
                5.widthBox,
                Text(
                  AppStrings.popularNews,
                  style: AppStyles.semiBold(),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.viewAll,
                    style: AppStyles.regular(color: AppColors.primaryText),
                  ),
                )
              ],
            ),
            10.heightBox,
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  clipBehavior: Clip.hardEdge,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Popular News For Example"
                                      .allWordsCapitilize(),
                                  style: AppStyles.regular(size: 12),
                                ),
                                10.heightBox,
                                VxBox(
                                        child: Text(
                                  "Sport",
                                  style: AppStyles.regular(
                                    color: AppColors.white,
                                    size: 12,
                                  ),
                                ))
                                    .color(AppColors.icon)
                                    .padding(const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 6))
                                    .roundedSM
                                    .make(),
                              ],
                            ),
                          ),
                          10.widthBox,
                          Expanded(
                            child: VxBox().black.size(80, 80).roundedSM.make(),
                          ),
                        ],
                      ),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time,
                                size: 14,
                                color: AppColors.secondaryText,
                              ),
                              5.widthBox,
                              Text("26 April, 24",
                                  style: AppStyles.regular(
                                    color: AppColors.secondaryText,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.favorite,
                                color: AppColors.white,
                                size: 14,
                              ),
                              4.widthBox,
                              Text(
                                "156",
                                style: AppStyles.regular(
                                  color: AppColors.white,
                                  size: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
