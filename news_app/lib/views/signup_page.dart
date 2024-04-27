//import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/widgets/custom_textfield.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controller/signup_controller.dart';
import '../res/consts/consts.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.signup,
              style: AppStyles.semiBold(size: 16),
            ),
            Text(
              AppStrings.followSimple,
              style:
                  AppStyles.semiBold(size: 12, color: AppColors.secondaryText),
            ),
            40.heightBox,
            const CustomTextField(
              hint: AppStrings.nameDef,
              label: AppStrings.name,
            ),
            const CustomTextField(
              hint: AppStrings.emailDef,
              label: AppStrings.email,
            ),
            const CustomTextField(
              hint: AppStrings.passwordDef,
              label: AppStrings.password,
              isPassword: true,
            ),
            30.heightBox,
            SizedBox(
              width: context.screenWidth,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  backgroundColor: AppColors.primaryButton,
                ),
                onPressed: () {},
                child: Text(AppStrings.signup),
              ),
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.alreadyHaveAccount,
                  style: AppStyles.regular(color: AppColors.secondaryText),
                ),
                TextButton(
                    onPressed: () {
                      controller.navigateback();
                    },
                    child: Text(
                      AppStrings.login,
                      style: AppStyles.regular(),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
