import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdi/mdi.dart';
import 'package:portofolio/home/home_view_controller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flag/flag.dart';

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
    );
  }

  Expanded _buildContent(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildHeader(context),
          _buildBottomSheet(),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/ocean.jpg',
            width: context.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 50,
            child: Text(
              'resume'.tr,
              style: Get.textTheme.subtitle1,
            ),
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
              label: Text('aboutMe'.tr),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.file_present),
              label: Text('project'.tr),
            ),
          ],
          leading: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Get.updateLocale(Locale('fr', 'FR'));
                  },
                  child: SizedBox(
                    width: 25,
                    child: Flag.fromCode(FlagsCode.FR),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.updateLocale(Locale('en', 'US'));
                  },
                  child: SizedBox(
                    width: 25,
                    child: Flag.fromCode(FlagsCode.US),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildBottomSheet() {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Minel Benjamin 2021',
            style: Get.textTheme.subtitle2,
          ),
          Text(
            'developWithFlutter'.tr,
            style: Get.textTheme.subtitle2,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'network'.tr + ' :',
                  style: Get.textTheme.subtitle2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'benjamin.minel@outlook.fr',
                    );
                    launch(emailLaunchUri.toString());
                  },
                  child: Text(
                    'benjamin.minel@outlook.fr',
                    style: Get.textTheme.subtitle2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    launch(
                      'https://github.com/ectrema/portofolio',
                    );
                  },
                  child: Icon(Mdi.github),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    launch(
                      'https://www.linkedin.com/in/benjamin-minel-96435a181/',
                    );
                  },
                  child: Icon(Mdi.linkedin),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
