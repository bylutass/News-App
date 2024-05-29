import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SearchhController extends GetxController {
  SearchhController();

  var searchController = TextEditingController();

  onCancelPressed() {
    searchController.clear();
  }
}
