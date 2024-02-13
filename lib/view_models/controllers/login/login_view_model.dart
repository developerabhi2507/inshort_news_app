import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final RxBool loading = false.obs;
  final RxBool phoneSignInButton = false.obs;
  final RxBool noLoginButton = false.obs;
}
