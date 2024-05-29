import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/category_controller.dart';
import 'package:news_app/controller/home_controller.dart';
import 'package:news_app/controller/profile_controller.dart';
import 'package:news_app/controller/video_controller.dart';

class DashBoardController extends GetxController {
  DashBoardController();

  HomeController? homeController = Get.put(HomeController());
  VideoController? videoController = Get.put(VideoController());
  CategoryController? categoryController = Get.put(CategoryController());
  ProfileController? profileController = Get.put(ProfileController());

  PageController? pageController = PageController();

  final _currentNavIndex = 0.obs;
  get currentNavIndex => _currentNavIndex.value;
  set currentNavIndex(value) => _currentNavIndex.value = value;
}
