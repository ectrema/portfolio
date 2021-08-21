import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdi/mdi.dart';
import 'package:portofolio/core/widget/x_scaffold.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about_me_view_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AboutMeView extends GetView<AboutMeViewController> {
  @override
  Widget build(BuildContext context) {
    return XScaffold(
      child: _buildContent(context),
      indexNavigation: 1,
    );
  }

  Widget _buildContent(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: context.width,
              child: Column(
                children: [
                  Text('Minel Benjamin'),
                  Text('job'.tr),
                ],
              ),
            ),
            Container(
              width: context.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 20),
                    child: Text(
                      'myPersonalProject'.tr,
                      style: Get.textTheme.headline2,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      _buildCarousel(
                        'assets/raspberry_pi_4.png',
                        'presentationRaspberryPiProjet'.tr,
                        context,
                      ),
                      _golangCarousel(context),
                      _buildCarousel(
                        'assets/pi_hole.png',
                        'presentationPiHoleProjet'.tr,
                        context,
                        height: context.height * 0.2,
                      ),
                      _buildCarousel(
                        'assets/mame.png',
                        'presentationMameProjet'.tr,
                        context,
                      ),
                    ],
                    options: CarouselOptions(
                      height: 400,
                      viewportFraction: 0.45,
                      initialPage: 4,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarousel(
    String pathPicture,
    String textPresentation,
    BuildContext context, {
    double? height,
  }) {
    return Container(
      color: Get.theme.accentColor,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              pathPicture,
              fit: BoxFit.scaleDown,
              height: height,
              width: context.width * 0.2,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    textPresentation,
                    style: Get.textTheme.bodyText1!
                        .copyWith(color: Get.theme.backgroundColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _golangCarousel(BuildContext context) {
    return Container(
      color: Get.theme.accentColor,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              'assets/go.png',
              fit: BoxFit.contain,
              width: context.width * 0.2,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'presentationGoLangProjet'.tr,
                    style: Get.textTheme.bodyText1!
                        .copyWith(color: Get.theme.backgroundColor),
                  ),
                ),
                InkWell(
                  onTap: () {
                    launch(
                      'https://github.com/ectrema/translation_api',
                    );
                  },
                  child: Icon(
                    Mdi.github,
                    color: Get.theme.backgroundColor,
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
