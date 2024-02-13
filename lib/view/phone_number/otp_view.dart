import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/res/components/round_button.dart';
import 'package:inshorts_news_demo_app/res/components/text_button.dart';
import 'package:inshorts_news_demo_app/res/routes/routes_name.dart';
import 'package:inshorts_news_demo_app/view_models/controllers/login/otp_verify_view_model.dart';
import 'package:pinput/pinput.dart';

import '../../res/colors/app_color.dart';

class VerifyWithOtpView extends StatefulWidget {
  const VerifyWithOtpView({super.key});

  @override
  State<VerifyWithOtpView> createState() => _VerifyWithOtpViewState();
}

class _VerifyWithOtpViewState extends State<VerifyWithOtpView> {
  final OtpVerifyViewModel otpVerifyVM = Get.put(OtpVerifyViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('verify_otp_title'.tr),
        titleTextStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColor.text3Light,
            ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: Get.height - (Get.height - 100),
              ),
              Text(
                'verify_code_text'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 16,
                    color: AppColor.text3Light,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: Get.height - (Get.height - 20),
              ),
              roundedPinPut(),
              SizedBox(
                height: Get.height - (Get.height - 40),
              ),
              Text(
                'not_receive_otp'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 16,
                    color: AppColor.text3Light,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: Get.height - (Get.height - 20),
              ),
              CustomTextButton(title: 'resend_otp_button'.tr, onPress: () {}),
              SizedBox(
                height: Get.height - (Get.height - 40),
              ),
              RoundButtonWidget(
                  title: 'login_button'.tr,
                  width: Get.width - (Get.width - 300),
                  onPress: () {
                    Get.toNamed(RouteName.newsView);
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget roundedPinPut() {
    return Pinput(
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
      animationCurve: Curves.bounceInOut,
      autofocus: true,
      closeKeyboardWhenCompleted: true,
      controller: otpVerifyVM.otpCodeController.value,
      focusNode: otpVerifyVM.otpCodeFocusNode.value,
      showCursor: false,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      textInputAction: TextInputAction.done,
      defaultPinTheme: PinTheme(
          width: 49,
          height: 53,
          textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 20,
              color: AppColor.text3Light,
              fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            color: AppColor.fillColor,
            border: Border.all(color: AppColor.fillColor),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.only(right: 10)),
      keyboardType: TextInputType.number,
      length: 4,
    );
  }
}
