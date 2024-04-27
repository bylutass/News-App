//import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:news_app/res/consts/assets.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controller/authentication_controller.dart';

class AuthenticationPage extends GetView<AuthenticationController> {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              AppAssets.logo,
              width: 140,
            ),
            15.heightBox,
            Text(
              AppStrings.welcome,
              style: AppStyles.semiBold(),
            ),
            10.heightBox,
            Text(
              AppStrings.signInToContinue,
              style: AppStyles.regular(color: AppColors.secondaryText),
            ),
            const Spacer(),
            VxBox(
              child: Text(
                AppStrings.signInGoogle,
                style: AppStyles.regular(color: AppColors.white),
              ),
            )
                .width(context.screenWidth - 20)
                .color(AppColors.secondaryButton)
                .padding(
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16))
                .rounded
                .alignment(Alignment.center)
                .make(),
            10.heightBox,
            VxBox(
              child: Text(
                AppStrings.signInFB,
                style: AppStyles.regular(color: AppColors.white),
              ),
            )
                .width(context.screenWidth - 20)
                .color(AppColors.primaryButton)
                .padding(
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16))
                .rounded
                .alignment(Alignment.center)
                .make(),
            const Spacer(),
            TextButton(
              onPressed: () {
                controller.navigateToLogin();
              },
              child: Text(
                AppStrings.continueWithEmail,
                style: AppStyles.regular(
                  size: 14,
                ),
              ),
            ),
            10.heightBox,
            Text(
              AppStrings.privacyPolicyTermsCondition,
              style: AppStyles.regular(
                color: AppColors.secondaryText,
                size: 12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.privacyPolicy,
                    style: AppStyles.regular(size: 12),
                  ),
                ),
                Text(
                  "and",
                  style: AppStyles.regular(
                      size: 12, color: AppColors.secondaryText),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.termsConditions,
                    style: AppStyles.regular(size: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
