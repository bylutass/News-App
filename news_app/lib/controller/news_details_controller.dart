import 'package:get/get.dart';

class NewsDetailsController extends GetxController {
  NewsDetailsController();

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;
}
