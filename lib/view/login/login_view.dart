import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/res/components/round_button.dart';
import 'package:inshorts_news_demo_app/view_models/controllers/login/login_view_model.dart';

import '../../res/assets/assets.dart';
import '../../res/colors/app_color.dart';
import '../../res/routes/routes_name.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginViewModel());

  int _currentIndex = 0;
  List<Widget> carouselItems = [
    Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: const DecorationImage(
          image: AssetImage(AssetConstants.onboard1),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: const DecorationImage(
          image: AssetImage(AssetConstants.onboard2),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: const DecorationImage(
          image: AssetImage(AssetConstants.onboard3),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];
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
                Get.toNamed(RouteName.newsView);
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                  items: carouselItems,
                  options: CarouselOptions(
                    height: 300,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  )),
              SizedBox(
                height: Get.height - (Get.height - 40),
              ),
              Text(
                'login1_text'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColor.text3Light,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: Get.height - (Get.height - 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: carouselItems.asMap().entries.map((entry) {
                  return Container(
                    width: 22, // Adjust the width as needed
                    height: 22, // Adjust the height as needed
                    margin: const EdgeInsets.symmetric(
                        horizontal: 4), // Adjust the margin as needed
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == entry.key
                            ? AppColor.bg1Light
                            : AppColor.fillColor,
                        // Adjust the border radius as needed
                        border: Border.all(color: AppColor.bg1Light)),
                  );
                }).toList(),
              ),
              SizedBox(
                height: Get.height - (Get.height - 138),
              ),
              Container(
                width: Get.width - (Get.width - 261),
                decoration: BoxDecoration(
                    color: AppColor.bg1Light,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.phone,
                      color: AppColor.bg2Light,
                    ),
                    SizedBox(
                      width: Get.width - (Get.width - 20),
                    ),
                    RoundButtonWidget(
                        width: Get.width - (Get.width - 180),
                        title: 'phone_sign_in'.tr,
                        loading: loginVM.loading.value,
                        onPress: () {
                          Get.toNamed(RouteName.phoneNoView);
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
