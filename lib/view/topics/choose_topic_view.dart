import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/res/colors/app_color.dart';
import 'package:inshorts_news_demo_app/res/components/round_button.dart';
import 'package:inshorts_news_demo_app/res/routes/routes_name.dart';
import 'package:inshorts_news_demo_app/view_models/controllers/choose_topic/choose_topic_view_model.dart';

class ChooseTopicView extends StatefulWidget {
  const ChooseTopicView({super.key});

  @override
  State<ChooseTopicView> createState() => _ChooseTopicViewState();
}

class _ChooseTopicViewState extends State<ChooseTopicView> {
  final chooseTopicVM = Get.put(ChooseTopicViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                Get.toNamed(RouteName.loginView);
              },
              child: Text(
                'skip_button'.tr,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColor.text3Light,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              )),
          SizedBox(
            width: Get.width - (Get.width - 20),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height - (Get.height - 40),
              ),
              Text(
                'select_topics'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 40),
              ),
              Obx(
                () => RoundButtonWidget(
                    buttonColor: chooseTopicVM.nationalPressed.value
                        ? AppColor.buttonBg1Light
                        : AppColor.buttonBg2Light,
                    textColor: chooseTopicVM.nationalPressed.value
                        ? AppColor.buttonFg1Light
                        : AppColor.buttonFg2Light,
                    height: Get.height - (Get.height - 42.64),
                    width: Get.width - (Get.width - 287.43),
                    title: 'national'.tr,
                    onPress: () {
                      chooseTopicVM.nationalPressed.toggle();
                    }),
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Obx(
                () => RoundButtonWidget(
                    buttonColor: chooseTopicVM.sportsPressed.value
                        ? AppColor.buttonBg1Light
                        : AppColor.buttonBg2Light,
                    textColor: chooseTopicVM.sportsPressed.value
                        ? AppColor.buttonFg1Light
                        : AppColor.buttonFg2Light,
                    height: Get.height - (Get.height - 42.64),
                    width: Get.width - (Get.width - 287.43),
                    title: 'sports'.tr,
                    onPress: () {
                      chooseTopicVM.sportsPressed.toggle();
                    }),
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Obx(
                () => RoundButtonWidget(
                    buttonColor: chooseTopicVM.technologyPressed.value
                        ? AppColor.buttonBg1Light
                        : AppColor.buttonBg2Light,
                    textColor: chooseTopicVM.technologyPressed.value
                        ? AppColor.buttonFg1Light
                        : AppColor.buttonFg2Light,
                    height: Get.height - (Get.height - 42.64),
                    width: Get.width - (Get.width - 287.43),
                    title: 'technology'.tr,
                    onPress: () {
                      chooseTopicVM.technologyPressed.toggle();
                    }),
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Obx(
                () => RoundButtonWidget(
                    buttonColor: chooseTopicVM.startupsPressed.value
                        ? AppColor.buttonBg1Light
                        : AppColor.buttonBg2Light,
                    textColor: chooseTopicVM.startupsPressed.value
                        ? AppColor.buttonFg1Light
                        : AppColor.buttonFg2Light,
                    height: Get.height - (Get.height - 42.64),
                    width: Get.width - (Get.width - 287.43),
                    title: 'startups'.tr,
                    onPress: () {
                      chooseTopicVM.startupsPressed.toggle();
                    }),
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Obx(
                () => RoundButtonWidget(
                    buttonColor: chooseTopicVM.businessPressed.value
                        ? AppColor.buttonBg1Light
                        : AppColor.buttonBg2Light,
                    textColor: chooseTopicVM.businessPressed.value
                        ? AppColor.buttonFg1Light
                        : AppColor.buttonFg2Light,
                    height: Get.height - (Get.height - 42.64),
                    width: Get.width - (Get.width - 287.43),
                    title: 'business'.tr,
                    onPress: () {
                      chooseTopicVM.businessPressed.toggle();
                    }),
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Obx(() => RoundButtonWidget(
                  buttonColor: chooseTopicVM.worldPressed.value
                      ? AppColor.buttonBg1Light
                      : AppColor.buttonBg2Light,
                  textColor: chooseTopicVM.worldPressed.value
                      ? AppColor.buttonFg1Light
                      : AppColor.buttonFg2Light,
                  height: Get.height - (Get.height - 42.64),
                  width: Get.width - (Get.width - 287.43),
                  title: 'world'.tr,
                  onPress: () {
                    chooseTopicVM.worldPressed.toggle();
                  })),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Obx(() => RoundButtonWidget(
                  buttonColor: chooseTopicVM.entertainPressed.value
                      ? AppColor.buttonBg1Light
                      : AppColor.buttonBg2Light,
                  textColor: chooseTopicVM.entertainPressed.value
                      ? AppColor.buttonFg1Light
                      : AppColor.buttonFg2Light,
                  height: Get.height - (Get.height - 42.64),
                  width: Get.width - (Get.width - 287.43),
                  title: 'entertainment'.tr,
                  onPress: () {
                    chooseTopicVM.entertainPressed.toggle();
                  })),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Obx(() => RoundButtonWidget(
                  buttonColor: chooseTopicVM.politicsPressed.value
                      ? AppColor.buttonBg1Light
                      : AppColor.buttonBg2Light,
                  textColor: chooseTopicVM.politicsPressed.value
                      ? AppColor.buttonFg1Light
                      : AppColor.buttonFg2Light,
                  height: Get.height - (Get.height - 42.64),
                  width: Get.width - (Get.width - 287.43),
                  title: 'politics'.tr,
                  onPress: () {
                    chooseTopicVM.politicsPressed.toggle();
                  })),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
