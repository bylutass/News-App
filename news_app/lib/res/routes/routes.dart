import 'package:news_app/controller/authentication_controller.dart';
import 'package:news_app/controller/onboarding_controller.dart';
import 'package:news_app/res/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:news_app/views/authentication_page.dart';
//import 'package:get/get_navigation/src/routes/get_route.dart';
//import '../../controller/onboarding_controller.dart';
import 'package:news_app/views/onboarding_page.dart';
import '../../controller/splash_controller.dart';
import '../../views/splash_page.dart';

class AppRoutes {
  static getRoutes() => [
        GetPage(
          name: RouteName.splash,
          page: () => const SplashPage(),
          binding: BindingsBuilder.put(() => SplashController()),
        ),
        GetPage(
          name: RouteName.onboarding,
          page: () => const OnboardingPage(),
          binding: BindingsBuilder.put(() => OnboardingController()),
        ),
        GetPage(
          name: RouteName.authentication,
          page: () => AuthenticationPage(),
          binding: BindingsBuilder.put(() => AuthenticationController()),
        )
      ];
}
