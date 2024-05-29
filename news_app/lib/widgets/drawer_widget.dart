//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:news_app/res/routes/route_name.dart';
import 'package:news_app/widgets/profile_button.dart';
import 'package:velocity_x/velocity_x.dart';
import '../res/consts/consts.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var titleList = [
      AppStrings.bookmark,
      AppStrings.contactUs,
      AppStrings.rateApp,
      AppStrings.privacyPolicy,
      AppStrings.aboutUs,
    ];

    var colorList = [
      AppColors.bookmarkCard,
      AppColors.contactCard,
      AppColors.rateCard,
      AppColors.privacyCard,
      AppColors.aboutCard,
    ];

    var iconList = [
      Icons.bookmark_outlined,
      Icons.mail_outline,
      Icons.star_outline,
      Icons.lock_outline,
      Icons.info_outline,
    ];

    return Drawer(
      backgroundColor: AppColors.white,
      child: Column(
        children: [
          56.heightBox,
          Image.asset(
            AppAssets.logo,
            width: 80,
          ),
          5.heightBox,
          Text(
            AppStrings.poweredBy,
            style: AppStyles.regular(size: 10),
          ),
          50.heightBox,
          ListView.builder(
            itemCount: titleList.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ProfileButton(
                  ontap: () {
                    switch (index) {
                      case 0:
                        Get.toNamed(RouteName.bookmark);
                    }
                  },
                  title: titleList[index],
                  icon: iconList[index],
                  color: colorList[index]);
            },
          ),
        ],
      ),
    );
  }
}
