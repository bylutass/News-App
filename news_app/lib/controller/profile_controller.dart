import 'package:get/get.dart';
import 'package:news_app/res/routes/route_name.dart';

class ProfileController extends GetxController {
  ProfileController();

  navigateToLogin() {
    Get.toNamed(RouteName.login, arguments: true);
  }
}
