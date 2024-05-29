//import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/res/consts/consts.dart';
//import 'package:news_app/res/consts/strings.dart';
import 'package:news_app/views/home_page.dart';
import 'package:news_app/widgets/navbar_button.dart';
//import 'package:news_app/widgets/category_card.dart';
//import 'package:velocity_x/velocity_x.dart';
import '../controller/dashboard_controller.dart';
import 'package:news_app/views/video_page.dart';
import 'package:news_app/views/category_page.dart';
import 'package:news_app/views/profile_page.dart';

class DashBoardPage extends GetView<DashBoardController> {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    var titleList = [
      AppStrings.home,
      AppStrings.video,
      AppStrings.category,
      AppStrings.profile
    ];
    var iconList = [
      Icons.home_outlined,
      Icons.videocam_outlined,
      Icons.category_outlined,
      Icons.person_outlined
    ];

    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          VideoPage(),
          CategoryPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              4,
              (index) => Obx(
                    () => Expanded(
                      child: NavBarButton(
                        color: controller.currentNavIndex == index
                            ? AppColors.primaryButton
                            : AppColors.icon,
                        onPressed: () {
                          controller.currentNavIndex = index;
                          controller.pageController?.jumpToPage(index);
                        },
                        title: titleList[index],
                        icon: iconList[index],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
