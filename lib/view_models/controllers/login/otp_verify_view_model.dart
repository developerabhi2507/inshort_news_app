import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpVerifyViewModel extends GetxController {
  final RxBool loading = false.obs;

  final RxBool isContinueButtonPressed = false.obs;
  final acceptPolicy = false.obs;
  final RxBool isRunning = false.obs;
  Rx<Duration> resendTime = Rx<Duration>(const Duration(seconds: 60));
  Timer? resendTimer;
  final otpCodeController = TextEditingController().obs;
  final otpCodeFocusNode = FocusNode().obs;
  RxString smsCode = ''.obs;
}
