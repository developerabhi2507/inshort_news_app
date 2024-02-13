import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/res/assets/assets.dart';
import 'package:inshorts_news_demo_app/res/colors/app_color.dart';
import 'package:inshorts_news_demo_app/res/components/round_button.dart';
import 'package:inshorts_news_demo_app/res/components/text_button.dart';
import 'package:inshorts_news_demo_app/view/navbar/navbar.dart';

import '../../res/routes/routes_name.dart';

class NewsShowView extends StatefulWidget {
  const NewsShowView({super.key});

  @override
  State<NewsShowView> createState() => _NewsShowViewState();
}

class _NewsShowViewState extends State<NewsShowView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onVerticalDragUpdate: (details) {
            if (details.delta.dy < -20) {
              // Swipe-up detected
              Get.toNamed(RouteName.chooseTopicsView);
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height - (Get.height - 90),
                ),
                Image.asset(
                  AssetConstants.onboard1,
                  width: Get.width,
                  fit: BoxFit.contain,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  decoration: const BoxDecoration(
                    color: AppColor.bg1Light,
                  ),
                  child: Text(
                    'news_title'.tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: AppColor.text2Light,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 20),
                ),
                Text(
                  'headline'.tr,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 20),
                ),
                Text(
                  'news_content'.tr,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 20),
                ),
                CustomTextButton(
                    textColor: AppColor.buttonFg5Light,
                    title: 'read_more'.tr,
                    onPress: () {}),
                SizedBox(
                  height: Get.height - (Get.height - 20),
                ),
                RoundButtonWidget(
                    height: 32,
                    width: 151,
                    fontSize: 14,
                    buttonColor: AppColor.buttonBg3Light,
                    title: 'hidden_icons'.tr,
                    onPress: () {})
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavbarView(),
    );
  }
}
