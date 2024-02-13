import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/res/components/round_button.dart';
import 'package:inshorts_news_demo_app/res/routes/routes_name.dart';
import 'package:inshorts_news_demo_app/view_models/controllers/change_language/change_lang_view_model.dart';

import '../../res/assets/assets.dart';
import '../../res/colors/app_color.dart';

class ChangeLanguageView extends StatefulWidget {
  const ChangeLanguageView({super.key});

  @override
  State<ChangeLanguageView> createState() => _ChangeLanguageViewState();
}

class _ChangeLanguageViewState extends State<ChangeLanguageView> {
  final changeLangViewModel = Get.put(ChangeLanguageViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: Get.height - (Get.height - 70),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColor.iconLight,
                      )),
                  SizedBox(
                    width: Get.width - (Get.width - 40),
                  ),
                  Text(
                    'lang_not_ava_eng'.tr,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: AppColor.blackColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 5, // Width of the dot
                    height: 5, // Height of the dot
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.divider, // Color of the dot
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: AppColor.divider, // Color of the divider
                      height: 1, // Height of the divider
                      thickness: 1, // Thickness of the divider
                      endIndent: 8,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height - (Get.height - 30),
              ),
              Text(
                'change_lang'.tr,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.text3Light),
              ),
              SizedBox(
                height: Get.height - (Get.height - 110),
              ),
              Obx(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButtonWidget(
                            height: Get.height - (Get.height - 47),
                            width: Get.width - (Get.width - 120),
                            borderColor: AppColor.border1,
                            buttonColor:
                                changeLangViewModel.isBanglaButtonPressed.value
                                    ? AppColor.buttonBg1Light
                                    : AppColor.buttonBg2Light,
                            textColor:
                                changeLangViewModel.isBanglaButtonPressed.value
                                    ? AppColor.buttonFg1Light
                                    : AppColor.buttonFg2Light,
                            title: 'bangla'.tr,
                            onPress: () {
                              changeLangViewModel.isBanglaButtonPressed.value =
                                  true;
                              changeLangViewModel.isMarathiButtonPressed.value =
                                  false;
                              changeLangViewModel.isTeluguButtonPressed.value =
                                  false;
                              changeLangViewModel.isTamilButtonPressed.value =
                                  false;
                              changeLangViewModel.isGujratiButtonPressed.value =
                                  false;
                              changeLangViewModel.isKannadaButtonPressed.value =
                                  false;
                              changeLangViewModel.isUdiyaButtonPressed.value =
                                  false;
                              changeLangViewModel
                                  .isMalyalamButtonPressed.value = false;
                              changeLangViewModel.isPunjabiButtonPressed.value =
                                  false;
                            }),
                        SizedBox(
                          width: Get.width - (Get.width - 50),
                        ),
                        RoundButtonWidget(
                            height: Get.height - (Get.height - 47),
                            width: Get.width - (Get.width - 120),
                            borderColor: AppColor.border1,
                            buttonColor:
                                changeLangViewModel.isMarathiButtonPressed.value
                                    ? AppColor.buttonBg1Light
                                    : AppColor.buttonBg2Light,
                            textColor:
                                changeLangViewModel.isMarathiButtonPressed.value
                                    ? AppColor.buttonFg1Light
                                    : AppColor.buttonFg2Light,
                            title: 'marathi'.tr,
                            onPress: () {
                              changeLangViewModel.isBanglaButtonPressed.value =
                                  false;
                              changeLangViewModel.isMarathiButtonPressed.value =
                                  true;
                              changeLangViewModel.isTeluguButtonPressed.value =
                                  false;
                              changeLangViewModel.isTamilButtonPressed.value =
                                  false;
                              changeLangViewModel.isGujratiButtonPressed.value =
                                  false;
                              changeLangViewModel.isKannadaButtonPressed.value =
                                  false;
                              changeLangViewModel.isUdiyaButtonPressed.value =
                                  false;
                              changeLangViewModel
                                  .isMalyalamButtonPressed.value = false;
                              changeLangViewModel.isPunjabiButtonPressed.value =
                                  false;
                            })
                      ],
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButtonWidget(
                            height: Get.height - (Get.height - 47),
                            width: Get.width - (Get.width - 120),
                            borderColor: AppColor.border1,
                            buttonColor:
                                changeLangViewModel.isTeluguButtonPressed.value
                                    ? AppColor.buttonBg1Light
                                    : AppColor.buttonBg2Light,
                            textColor:
                                changeLangViewModel.isTeluguButtonPressed.value
                                    ? AppColor.buttonFg1Light
                                    : AppColor.buttonFg2Light,
                            title: 'telugu'.tr,
                            onPress: () {
                              changeLangViewModel.isBanglaButtonPressed.value =
                                  false;
                              changeLangViewModel.isMarathiButtonPressed.value =
                                  false;
                              changeLangViewModel.isTeluguButtonPressed.value =
                                  true;
                              changeLangViewModel.isTamilButtonPressed.value =
                                  false;
                              changeLangViewModel.isGujratiButtonPressed.value =
                                  false;
                              changeLangViewModel.isKannadaButtonPressed.value =
                                  false;
                              changeLangViewModel.isUdiyaButtonPressed.value =
                                  false;
                              changeLangViewModel
                                  .isMalyalamButtonPressed.value = false;
                              changeLangViewModel.isPunjabiButtonPressed.value =
                                  false;
                            }),
                        SizedBox(
                          width: Get.width - (Get.width - 50),
                        ),
                        RoundButtonWidget(
                            height: Get.height - (Get.height - 47),
                            width: Get.width - (Get.width - 120),
                            borderColor: AppColor.border1,
                            buttonColor:
                                changeLangViewModel.isTamilButtonPressed.value
                                    ? AppColor.buttonBg1Light
                                    : AppColor.buttonBg2Light,
                            textColor:
                                changeLangViewModel.isTamilButtonPressed.value
                                    ? AppColor.buttonFg1Light
                                    : AppColor.buttonFg2Light,
                            title: 'tamil'.tr,
                            onPress: () {
                              changeLangViewModel.isBanglaButtonPressed.value =
                                  false;
                              changeLangViewModel.isMarathiButtonPressed.value =
                                  false;
                              changeLangViewModel.isTeluguButtonPressed.value =
                                  false;
                              changeLangViewModel.isTamilButtonPressed.value =
                                  true;
                              changeLangViewModel.isGujratiButtonPressed.value =
                                  false;
                              changeLangViewModel.isKannadaButtonPressed.value =
                                  false;
                              changeLangViewModel.isUdiyaButtonPressed.value =
                                  false;
                              changeLangViewModel
                                  .isMalyalamButtonPressed.value = false;
                              changeLangViewModel.isPunjabiButtonPressed.value =
                                  false;
                            })
                      ],
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButtonWidget(
                            height: Get.height - (Get.height - 47),
                            width: Get.width - (Get.width - 120),
                            borderColor: AppColor.border1,
                            buttonColor:
                                changeLangViewModel.isGujratiButtonPressed.value
                                    ? AppColor.buttonBg1Light
                                    : AppColor.buttonBg2Light,
                            textColor:
                                changeLangViewModel.isGujratiButtonPressed.value
                                    ? AppColor.buttonFg1Light
                                    : AppColor.buttonFg2Light,
                            title: 'gujrati'.tr,
                            onPress: () {
                              changeLangViewModel.isBanglaButtonPressed.value =
                                  false;
                              changeLangViewModel.isMarathiButtonPressed.value =
                                  false;
                              changeLangViewModel.isTeluguButtonPressed.value =
                                  false;
                              changeLangViewModel.isTamilButtonPressed.value =
                                  false;
                              changeLangViewModel.isGujratiButtonPressed.value =
                                  true;
                              changeLangViewModel.isKannadaButtonPressed.value =
                                  false;
                              changeLangViewModel.isUdiyaButtonPressed.value =
                                  false;
                              changeLangViewModel
                                  .isMalyalamButtonPressed.value = false;
                              changeLangViewModel.isPunjabiButtonPressed.value =
                                  false;
                            }),
                        SizedBox(
                          width: Get.width - (Get.width - 50),
                        ),
                        RoundButtonWidget(
                            height: Get.height - (Get.height - 47),
                            width: Get.width - (Get.width - 120),
                            borderColor: AppColor.border1,
                            buttonColor:
                                changeLangViewModel.isKannadaButtonPressed.value
                                    ? AppColor.buttonBg1Light
                                    : AppColor.buttonBg2Light,
                            textColor:
                                changeLangViewModel.isKannadaButtonPressed.value
                                    ? AppColor.buttonFg1Light
                                    : AppColor.buttonFg2Light,
                            title: 'kannada'.tr,
                            onPress: () {
                              changeLangViewModel.isBanglaButtonPressed.value =
                                  false;
                              changeLangViewModel.isMarathiButtonPressed.value =
                                  false;
                              changeLangViewModel.isTeluguButtonPressed.value =
                                  false;
                              changeLangViewModel.isTamilButtonPressed.value =
                                  false;
                              changeLangViewModel.isGujratiButtonPressed.value =
                                  false;
                              changeLangViewModel.isKannadaButtonPressed.value =
                                  true;
                              changeLangViewModel.isUdiyaButtonPressed.value =
                                  false;
                              changeLangViewModel
                                  .isMalyalamButtonPressed.value = false;
                              changeLangViewModel.isPunjabiButtonPressed.value =
                                  false;
                            })
                      ],
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButtonWidget(
                            height: Get.height - (Get.height - 47),
                            width: Get.width - (Get.width - 120),
                            borderColor: AppColor.border1,
                            buttonColor:
                                changeLangViewModel.isUdiyaButtonPressed.value
                                    ? AppColor.buttonBg1Light
                                    : AppColor.buttonBg2Light,
                            textColor:
                                changeLangViewModel.isUdiyaButtonPressed.value
                                    ? AppColor.buttonFg1Light
                                    : AppColor.buttonFg2Light,
                            title: 'udiya'.tr,
                            onPress: () {
                              changeLangViewModel.isBanglaButtonPressed.value =
                                  false;
                              changeLangViewModel.isMarathiButtonPressed.value =
                                  false;
                              changeLangViewModel.isTeluguButtonPressed.value =
                                  false;
                              changeLangViewModel.isTamilButtonPressed.value =
                                  false;
                              changeLangViewModel.isGujratiButtonPressed.value =
                                  false;
                              changeLangViewModel.isKannadaButtonPressed.value =
                                  false;
                              changeLangViewModel.isUdiyaButtonPressed.value =
                                  true;
                              changeLangViewModel
                                  .isMalyalamButtonPressed.value = false;
                              changeLangViewModel.isPunjabiButtonPressed.value =
                                  false;
                            }),
                        SizedBox(
                          width: Get.width - (Get.width - 50),
                        ),
                        RoundButtonWidget(
                            height: Get.height - (Get.height - 47),
                            width: Get.width - (Get.width - 120),
                            borderColor: AppColor.border1,
                            buttonColor: changeLangViewModel
                                    .isMalyalamButtonPressed.value
                                ? AppColor.buttonBg1Light
                                : AppColor.buttonBg2Light,
                            textColor: changeLangViewModel
                                    .isMalyalamButtonPressed.value
                                ? AppColor.buttonFg1Light
                                : AppColor.buttonFg2Light,
                            title: 'malyalam'.tr,
                            onPress: () {
                              changeLangViewModel.isBanglaButtonPressed.value =
                                  false;
                              changeLangViewModel.isMarathiButtonPressed.value =
                                  false;
                              changeLangViewModel.isTeluguButtonPressed.value =
                                  false;
                              changeLangViewModel.isTamilButtonPressed.value =
                                  false;
                              changeLangViewModel.isGujratiButtonPressed.value =
                                  false;
                              changeLangViewModel.isKannadaButtonPressed.value =
                                  false;
                              changeLangViewModel.isUdiyaButtonPressed.value =
                                  false;
                              changeLangViewModel
                                  .isMalyalamButtonPressed.value = true;
                              changeLangViewModel.isPunjabiButtonPressed.value =
                                  false;
                            })
                      ],
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButtonWidget(
                            height: Get.height - (Get.height - 47),
                            width: Get.width - (Get.width - 120),
                            borderColor: AppColor.border1,
                            buttonColor:
                                changeLangViewModel.isPunjabiButtonPressed.value
                                    ? AppColor.buttonBg1Light
                                    : AppColor.buttonBg2Light,
                            textColor:
                                changeLangViewModel.isPunjabiButtonPressed.value
                                    ? AppColor.buttonFg1Light
                                    : AppColor.buttonFg2Light,
                            title: 'punjabi'.tr,
                            onPress: () {
                              changeLangViewModel.isBanglaButtonPressed.value =
                                  false;
                              changeLangViewModel.isMarathiButtonPressed.value =
                                  false;
                              changeLangViewModel.isTeluguButtonPressed.value =
                                  false;
                              changeLangViewModel.isTamilButtonPressed.value =
                                  false;
                              changeLangViewModel.isGujratiButtonPressed.value =
                                  false;
                              changeLangViewModel.isKannadaButtonPressed.value =
                                  false;
                              changeLangViewModel.isUdiyaButtonPressed.value =
                                  false;
                              changeLangViewModel
                                  .isMalyalamButtonPressed.value = false;
                              changeLangViewModel.isPunjabiButtonPressed.value =
                                  true;
                            }),
                        SizedBox(
                          width: Get.width - (Get.width - 170),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 70),
              ),
              SizedBox(
                height: Get.height - (Get.height - 30),
              ),
              GestureDetector(
                onVerticalDragUpdate: (details) {
                  if (details.delta.dy < -20) {
                    // Swipe-up detected
                    Get.toNamed(RouteName.chooseTopicsView);
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AssetConstants.swipeUpGif,
                      height: Get.height - (Get.height - 70),
                      width: Get.width - (Get.width - 90),
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 30),
                    ),
                    Text(
                      'swipe_up'.tr,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColor.blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
