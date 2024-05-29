import 'package:get/get.dart';
import 'package:news_app/res/routes/route_name.dart';

class VideoController extends GetxController {
  VideoController();

  onArticleTapped() {
    Get.toNamed(RouteName.newsDetails);
  }
}
