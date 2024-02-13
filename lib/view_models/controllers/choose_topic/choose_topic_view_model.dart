import 'package:get/get.dart';

class ChooseTopicViewModel extends GetxController {
  final RxBool loading = false.obs;
  final RxBool nationalPressed = false.obs;
  final RxBool sportsPressed = false.obs;
  final RxBool technologyPressed = false.obs;
  final RxBool startupsPressed = false.obs;
  final RxBool businessPressed = false.obs;
  final RxBool worldPressed = false.obs;
  final RxBool entertainPressed = false.obs;
  final RxBool politicsPressed = false.obs;
}
