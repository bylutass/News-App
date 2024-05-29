import 'package:get/get.dart';

class CategoryController extends GetxController {
  CategoryController();

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;
}
