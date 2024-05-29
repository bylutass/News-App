//import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:news_app/res/routes/route_name.dart';
import 'package:news_app/widgets/profile_button.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:velocity_x/velocity_x.dart';
import '../controller/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());

    var titleList = [
      AppStrings.bookmark,
      AppStrings.darkMode,
      AppStrings.getNotification,
      AppStrings.contactUs,
      AppStrings.rateApp,
      AppStrings.privacyPolicy,
      AppStrings.aboutUs,
    ];

    var titleColors = [
      AppColors.bookmarkCard,
      AppColors.darkModeCard,
      AppColors.notificationCard,
      AppColors.contactCard,
      AppColors.rateCard,
      AppColors.privacyCard,
      AppColors.aboutCard,
    ];

    var iconList = [
      Icons.bookmark_outlined,
      Icons.dark_mode_outlined,
      Icons.notifications_outlined,
      Icons.mail_outline,
      Icons.star_outline,
      Icons.lock_outline,
      Icons.info_outline,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.profile, style: AppStyles.semiBold(size: 16)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileButton(
              ontap: () {
                controller.navigateToLogin();
              },
              title: AppStrings.login,
              icon: Icons.person_outlined,
              color: AppColors.loginCard,
            ),
            10.heightBox,
            Text(
              AppStrings.generalSettings,
              style: AppStyles.semiBold(size: 16),
            ),
            10.heightBox,
            ListView.builder(
              shrinkWrap: true,
              itemCount: titleList.length,
              itemBuilder: (BuildContext context, int index) {
                return ProfileButton(
                  ontap: () {
                    switch (index) {
                      case 0:
                        Get.toNamed(RouteName.bookmark);
                        break;
                    }
                  },
                  isSwitch: index == 1 || index == 2 ? true : false,
                  title: titleList[index],
                  icon: iconList[index],
                  color: titleColors[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
