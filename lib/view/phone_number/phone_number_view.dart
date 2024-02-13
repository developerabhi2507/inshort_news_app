import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/res/colors/app_color.dart';
import 'package:inshorts_news_demo_app/res/components/round_button.dart';
import 'package:inshorts_news_demo_app/res/routes/routes_name.dart';
import 'package:inshorts_news_demo_app/view_models/controllers/login/phone_number_view_model.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../res/utils/utils.dart';

class PhoneNumberView extends StatefulWidget {
  const PhoneNumberView({Key? key}) : super(key: key);

  @override
  State<PhoneNumberView> createState() => _PhoneNumberViewState();
}

class _PhoneNumberViewState extends State<PhoneNumberView> {
  final phoneVM = Get.put(PhoneNumberViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('phone_number_title'.tr),
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
              IntlPhoneField(
                controller: phoneVM.phoneNoController.value,
                focusNode: phoneVM.phoneNoFocusNode.value,
                cursorColor: AppColor.cursor,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.done,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                validator: (value) {
                  if (value!.number.isEmpty) {
                    Utils.snackBar('empty_no_title'.tr, 'empty_no_mess'.tr);
                  }
                  return null;
                },
                onSubmitted: (value) {
                  phoneVM.phoneNoFocusNode.value.unfocus();
                },
                decoration: InputDecoration(
                  labelText: 'phone_number_label'.tr,
                  labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.text3Light.withOpacity(0.6),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                  filled: true,
                  fillColor: AppColor.bg2Light.withOpacity(0.6),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColor.border1),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: AppColor.border1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColor.border1,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 30,
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              SizedBox(
                height: Get.height - (Get.height - 20),
              ),
              RoundButtonWidget(
                  width: 271,
                  loading: phoneVM.loading.value,
                  title: 'verify_number_button'.tr,
                  onPress: () {
                    Get.toNamed(RouteName.otpVerifyView);
                  }),
              SizedBox(
                height: Get.height - (Get.height - 40),
              ),
              SizedBox(
                width: Get.width - (Get.width - 300),
                child: Text(
                  'policy_check_text'.tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16,
                      color: AppColor.text3Light,
                      fontWeight: FontWeight.w400),
                  softWrap: true,
                  textWidthBasis: TextWidthBasis.longestLine,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
