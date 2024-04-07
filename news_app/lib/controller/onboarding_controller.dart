import 'package:get/get.dart';
import 'package:news_app/res/routes/route_name.dart';
import '../res/consts/consts.dart';

class OnboardingController extends GetxController {
  OnboardingController();

  final _currentIndex = 0.obs;
  get currentIndex => _currentIndex.value;
  set currentIndex(value) => _currentIndex.value = value;

  PageController? pageController;

  changeIndex(int value) {
    currentIndex = value;
  }

  changePage(int value) {
    pageController?.animateToPage(value,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  onContinueOrSkipPressed() {
    Get.offNamed(RouteName.authentication);
  }
}
