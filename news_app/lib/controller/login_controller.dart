import 'package:get/get.dart';
import '../res/routes/route_name.dart';

class LoginController extends GetxController {
  LoginController();

  navigateToSignup() {
    Get.toNamed(RouteName.signup);
  }

  navigateAsGuest() {
    Get.offAllNamed(RouteName.home);
  }

  onLoginPressed() {}
}
