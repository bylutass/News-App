//import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:news_app/res/consts/colors.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controller/onboarding_controller.dart';
//import '../res/consts/assets.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var titles = [
      AppStrings.onBoardingTitle0,
      AppStrings.onBoardingTitle1,
      AppStrings.onBoardingTitle2
    ];
    var desc = [
      AppStrings.onBoardingDesc0,
      AppStrings.onBoardingDesc1,
      AppStrings.onBoardingDesc2
    ];

    return Scaffold(
        body: PageView.builder(
            controller: controller.pageController,
            itemCount: 3,
            onPageChanged: (value) => controller.changeIndex(value),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      "${AppAssets.onboarding}$index.png",
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          titles[index],
                          style: AppStyles.semiBold(size: 16),
                        ),
                        6.heightBox,
                        VxBox()
                            .size(100, 5)
                            .color(AppColors.primaryButton)
                            .rounded
                            .make(),
                        30.heightBox,
                        Text(
                          desc[index],
                          style:
                              AppStyles.regular(color: AppColors.secondaryText),
                        ),
                      ],
                    ),
                  ))
                ],
              );
            }),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    controller.onContinueOrSkipPressed();
                  },
                  child: Text(
                    AppStrings.skip,
                    style: AppStyles.semiBold(
                      color: AppColors.secondaryText,
                    ),
                  )),
              Obx(
                () => Row(
                  children: List.generate(
                      3,
                      (index) => VxBox()
                          .size(index == controller.currentIndex ? 30 : 5, 5)
                          .rounded
                          .color(index == controller.currentIndex
                              ? AppColors.primaryButton
                              : AppColors.sliderDot)
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .make()),
                ),
              ),
              Obx(
                () => controller.currentIndex < 2
                    ? IconButton(
                        onPressed: () {
                          controller.changePage(controller.currentIndex);
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.secondaryButton,
                        ))
                    : TextButton(
                        onPressed: () {
                          controller.onContinueOrSkipPressed();
                        },
                        child: Text(
                          AppStrings.continueText,
                          style: AppStyles.semiBold(
                              color: AppColors.secondaryButton),
                        )),
              )
            ],
          ),
        ));
  }
}
