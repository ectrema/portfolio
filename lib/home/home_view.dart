import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdi/mdi.dart';
import 'package:portofolio/core/widget/x_bottom_sheet.dart';
import 'package:portofolio/home/home_view_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends GetView<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
      bottomSheet: XBottomSheet(),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: _buildHeader(context),
              ),
              _buildMain(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Portofolio',
            style: Get.textTheme.headline2,
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Get.theme.primaryColor,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    'about'.tr.capitalizeFirst!,
                    style: Get.textTheme.subtitle1,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    'portofolio'.tr.capitalizeFirst!,
                    style: Get.textTheme.subtitle1,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    'contact'.tr.capitalizeFirst!,
                    style: Get.textTheme.subtitle1,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMain(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      margin: const EdgeInsets.only(left: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bonjour je suis'.tr,
            style: Get.textTheme.headline4,
          ),
          Text(
            'Benjamin Minel'.tr,
            style: Get.textTheme.headline3,
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 15),
            width: 700,
            child: Text(
              'myDescription'.tr,
              style: Get.textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    'network'.tr + ' :',
                    style: Get.textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
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
                      style: Get.textTheme.headline5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
          ),
        ],
      ),
    );
  }
}
