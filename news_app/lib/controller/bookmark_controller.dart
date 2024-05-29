import 'package:get/get.dart';
import 'package:news_app/res/routes/route_name.dart';

class BookmarkController extends GetxController {
  BookmarkController();

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;

  void navigateToNewsDetails() {
    Get.toNamed(RouteName.newsDetails);
  }
}
