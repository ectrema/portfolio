import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/core/widget/x_bottom_sheet.dart';
import 'package:portofolio/core/widget/x_scaffold.dart';
import 'package:portofolio/home/home_view_controller.dart';

class HomeView extends GetView<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return XScaffold(
      child: _buildContent(context),
      indexNavigation: 0,
    );
  }

  Expanded _buildContent(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildHeader(context),
          _buildMain(),
          XBottomSheet(),
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

  Widget _buildMain() {
    return Center(
      child: Text(
        'myDescription'.tr,
        style: Get.textTheme.bodyText1,
      ),
    );
  }
}
