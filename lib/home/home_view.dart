import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/home/home_view_controller.dart';

class HomeView extends GetView<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          MouseRegion(
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
                    icon: Icon(Icons.home),
                    label: Text('presentation'.tr),
                  ),
                ],
                leading: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
            ),
          ),
          Expanded(
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
                _buildHeader(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext ctx) {
    return Image.asset(
      'assets/IMG_4542.png',
      height: 500,
      width: 300,
    );
  }
}
