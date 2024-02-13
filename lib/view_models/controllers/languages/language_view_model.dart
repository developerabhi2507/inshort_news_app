import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/res/routes/routes_name.dart';

class LanguageViewModel {
  final RxBool isEnglishButtonPressed = true.obs;
  final RxBool isHindiButtonPressed = false.obs;
  RxBool loading = false.obs;

  void langChanged() {
    loading.value = true;
    if (loading.value) {
      loading.value = false;
      Get.toNamed(RouteName.languageOptionsView);
    }
  }
}
