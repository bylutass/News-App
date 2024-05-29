import 'package:get/get.dart';
import 'package:news_app/res/routes/route_name.dart';

class ViewAllController extends GetxController {
  ViewAllController();

  navigateToNewsDetails() {
    Get.toNamed(RouteName.newsDetails);
  }

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;
}
