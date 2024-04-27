import 'package:news_app/controller/authentication_controller.dart';
import 'package:news_app/controller/home_controller.dart';
import 'package:news_app/controller/onboarding_controller.dart';
import 'package:news_app/controller/signup_controller.dart';
import 'package:news_app/res/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:news_app/views/authentication_page.dart';
import 'package:news_app/views/home_page.dart';
import 'package:news_app/views/login_page.dart';
//import 'package:get/get_navigation/src/routes/get_route.dart';
//import '../../controller/onboarding_controller.dart';
import 'package:news_app/views/onboarding_page.dart';
import 'package:news_app/views/signup_page.dart';
import '../../controller/splash_controller.dart';
import '../../views/splash_page.dart';
import '../../controller/login_controller.dart';

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
          page: () => const AuthenticationPage(),
          binding: BindingsBuilder.put(() => AuthenticationController()),
        ),
        GetPage(
          name: RouteName.login,
          page: () => const LoginPage(),
          binding: BindingsBuilder.put(() => LoginController()),
        ),
        GetPage(
          name: RouteName.signup,
          page: () => const SignupPage(),
          binding: BindingsBuilder.put(() => SignupController()),
        ),
        GetPage(
          name: RouteName.home,
          page: () => const HomePage(),
          binding: BindingsBuilder.put(() => HomeController()),
        )
      ];
}
