import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/home/home_view.dart';
import 'package:portofolio/home/home_view_controller_bindings.dart';
import 'package:portofolio/theme/theme_data.dart';

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
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
    ),
  );
}
