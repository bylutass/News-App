//import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:news_app/res/consts/assets.dart';
import '../res/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controller/splash_controller.dart';


class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(AppAssets.logo, width: 140,),
            const Spacer(),
            Text(AppStrings.poweredBy, style: AppStyles.regular(size:12),),
            20.heightBox,
          ],
        ),
      ),
    );
  }
}


