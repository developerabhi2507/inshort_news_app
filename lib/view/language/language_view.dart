import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/res/assets/assets.dart';
import 'package:inshorts_news_demo_app/res/colors/app_color.dart';
import 'package:inshorts_news_demo_app/res/components/round_button.dart';
import 'package:inshorts_news_demo_app/view_models/controllers/languages/language_view_model.dart';

import '../../res/routes/routes_name.dart';

class LanguageView extends StatefulWidget {
  const LanguageView({super.key});

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
  final langViewModel = Get.put(LanguageViewModel());
  @override
  void initState() {
    super.initState();
    langViewModel.isHindiButtonPressed.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: Get.height - (Get.height - 60),
            ),
            Image.asset(AssetConstants.langImage),
            SizedBox(
              height: Get.height - (Get.height - 30),
            ),
            Text(
              'choose_lang'.tr,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColor.blackColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: Get.height - (Get.height - 78),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => RoundButtonWidget(
                    height: Get.height - (Get.height - 36),
                    width: Get.width - (Get.width - 120),
                    borderColor: AppColor.border1,
                    buttonColor: langViewModel.isEnglishButtonPressed.value
                        ? AppColor.buttonBg1Light
                        : AppColor.buttonBg2Light,
                    textColor: langViewModel.isEnglishButtonPressed.value
                        ? AppColor.buttonFg1Light
                        : AppColor.buttonFg2Light,
                    title: 'english'.tr,
                    onPress: () {
                      langViewModel.isEnglishButtonPressed.value = true;
                      langViewModel.isHindiButtonPressed.value = false;
                    },
                  ),
                ),
                SizedBox(
                  width: Get.width - (Get.width - 38),
                ),
                Obx(() => RoundButtonWidget(
                      height: Get.height - (Get.height - 36),
                      width: Get.width - (Get.width - 120),
                      borderColor: AppColor.border1,
                      buttonColor: langViewModel.isHindiButtonPressed.value
                          ? AppColor.buttonBg1Light
                          : AppColor.buttonBg2Light,
                      textColor: langViewModel.isHindiButtonPressed.value
                          ? AppColor.buttonFg1Light
                          : AppColor.buttonFg2Light,
                      title: 'hindi'.tr,
                      onPress: () {
                        langViewModel.isHindiButtonPressed.value = true;
                        langViewModel.isEnglishButtonPressed.value = false;
                      },
                    ))
              ],
            ),
            SizedBox(
              height: Get.height - (Get.height - 30),
            ),
            Text(
              'lang_not_ava_eng'.tr,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColor.blackColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: Get.height - (Get.height - 30),
            ),
            RoundButtonWidget(
                height: Get.height - (Get.height - 33),
                width: Get.width - (Get.width - 306),
                title: 'lang_not_ava_hin'.tr,
                onPress: () => langViewModel.langChanged()),
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
    );
  }
}
