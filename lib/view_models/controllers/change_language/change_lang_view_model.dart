import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/res/routes/routes_name.dart';

class ChangeLanguageViewModel {
  final RxBool isBanglaButtonPressed = false.obs;
  final RxBool isMarathiButtonPressed = false.obs;
  final RxBool isTeluguButtonPressed = false.obs;
  final RxBool isTamilButtonPressed = false.obs;
  final RxBool isGujratiButtonPressed = false.obs;
  final RxBool isKannadaButtonPressed = false.obs;
  final RxBool isUdiyaButtonPressed = false.obs;
  final RxBool isMalyalamButtonPressed = false.obs;
  final RxBool isPunjabiButtonPressed = false.obs;
  RxBool loading = false.obs;

  void langChanged() {
    loading.value = true;
    if (loading.value) {
      loading.value = false;
      Get.toNamed(RouteName.languageOptionsView);
    }
  }
}
