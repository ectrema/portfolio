import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/about_me/about_me_view.dart';
import 'package:portofolio/about_me/about_me_view_controller_bindings.dart';
import 'package:portofolio/core/translation/translation.dart';
import 'package:portofolio/home/home_view.dart';
import 'package:portofolio/home/home_view_controller_bindings.dart';

import 'core/theme/theme_data.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: XThemeData.dark(),
      getPages: <GetPage>[
        GetPage(
          name: '/home',
          page: () => HomeView(),
          binding: HomeViewControllerBindings(),
        ),
        GetPage(
          name: '/about-me',
          page: () => AboutMeView(),
          binding: AboutMeViewControllerBindings(),
        ),
      ],
      locale: Get.deviceLocale,
      translationsKeys: Translation.translationsKeys,
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      defaultTransition: Transition.noTransition,
    ),
  );
}
