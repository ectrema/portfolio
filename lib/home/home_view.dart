import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/home/home_view_controller.dart';

class HomeView extends GetView<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          _buildNavigationRail(),
          _buildContent(context),
        ],
      ),
      bottomSheet: _buildBottomSheet(),
    );
  }

  Expanded _buildContent(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            'Benjamin Minel',
            style: Get.textTheme.headline1,
          ),
          Text(
            'Développeur d\'application mobile',
            style: Get.textTheme.headline2,
          ),
          Image.asset(
            'assets/IMG_4542.png',
            height: 500,
            width: 300,
          ),
        ],
      ),
    );
  }

  MouseRegion _buildNavigationRail() {
    return MouseRegion(
      onEnter: (value) {
        controller.showExtended.value = true;
      },
      onExit: (value) {
        controller.showExtended.value = false;
      },
      child: Obx(
        () => NavigationRail(
          minWidth: 100,
          selectedIndex: 0,
          extended: controller.showExtended.value,
          onDestinationSelected: (int index) {},
          destinations: [
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text('home'.tr),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.account_box),
              label: Text('presentation'.tr),
            ),
          ],
          leading: const SizedBox(
            height: 50,
          ),
        ),
      ),
    );
  }

  Container _buildBottomSheet() {
    return Container(
      height: 80,
      // width: context.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Minel Benjamin 2021',
            style: Get.textTheme.subtitle1,
          ),
          Text(
            'developWithFlutter'.tr,
            style: Get.textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
