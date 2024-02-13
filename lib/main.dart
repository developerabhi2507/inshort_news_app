import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'res/locals/languages.dart';
import 'res/routes/routes.dart';
import 'res/routes/routes_name.dart';
import 'res/utils/theme_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app_name'.tr,
      themeMode: ThemeMode.light,
      theme: ThemeService().lightTheme,
      // darkTheme: ThemeService().darkTheme,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: RouteName.languageView,
      getPages: AppRoutes.appRoutes(),
    );
  }
}
