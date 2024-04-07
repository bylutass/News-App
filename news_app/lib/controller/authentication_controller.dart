import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  AuthenticationController();

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;
}
