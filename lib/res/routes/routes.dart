import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/view/language/language_view.dart';
import 'package:inshorts_news_demo_app/view/login/login_view.dart';
import 'package:inshorts_news_demo_app/view/news_show/news_show_view.dart';
import 'package:inshorts_news_demo_app/view/phone_number/otp_view.dart';
import 'package:inshorts_news_demo_app/view/phone_number/phone_number_view.dart';
import 'package:inshorts_news_demo_app/view/topics/choose_topic_view.dart';

import '../../view/change_language/change_lang_view.dart';
import 'routes_name.dart';

class AppRoutes {
  // static const initial = '/';
  static appRoutes() => [
        GetPage(
            name: RouteName.languageView,
            page: () => const LanguageView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.languageOptionsView,
            page: () => const ChangeLanguageView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.chooseTopicsView,
            page: () => const ChooseTopicView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.downToUp),
        GetPage(
            name: RouteName.loginView,
            page: () => const LoginView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.phoneNoView,
            page: () => const PhoneNumberView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.otpVerifyView,
            page: () => const VerifyWithOtpView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.newsView,
            page: () => const NewsShowView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
      ];
}
