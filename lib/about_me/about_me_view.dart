import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/core/widget/item_carousel.dart';
import 'package:portofolio/core/widget/item_inkwell_carousel.dart';
import 'package:portofolio/core/widget/x_scaffold.dart';
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
              height: 600,
              width: context.width,
              child: Column(
                children: [
                  Text('Minel Benjamin'),
                  Text('job'.tr),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'info'.tr + ' :',
                            style: Get.textTheme.headline2,
                          ),
                          Wrap(
                            children: [
                              _buildInfos('birthday'.tr, '16/07/1999'),
                              _buildInfos(
                                  'age'.tr,
                                  '${DateTime.now().year - 1999}' +
                                      ' ' +
                                      'year'.tr),
                              _buildInfos('mobility'.tr, 'driveLicense'.tr),
                            ],
                          ),
                          Wrap(
                            children: [
                              _buildInfos('compamy'.tr, 'myCompany'.tr),
                              _buildInfos('job'.tr, 'myJob'.tr),
                            ],
                          ),
                          _buildInfos('lastDegree'.tr, 'myLastDegree'.tr),
                          _buildInfos('interest'.tr, 'myInterest'.tr),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: context.width,
              margin: const EdgeInsets.only(top: 20),
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
                      ItemCarrousel(
                        'assets/raspberry_pi_4.png',
                        'presentationRaspberryPiProjet'.tr,
                      ),
                      ItemInkwellCarrousel(
                        'assets/go.png',
                        'presentationGoLangProjet'.tr,
                        'https://github.com/ectrema/translation_api',
                      ),
                      ItemInkwellCarrousel(
                        'assets/logo_appli_jap.png',
                        'presentationAppliJapProjetV1'.tr,
                        'https://github.com/ectrema/japan_kanji',
                        height: context.height * 0.15,
                      ),
                      ItemInkwellCarrousel(
                        'assets/logo_appli_jap.png',
                        'presentationAppliJapProjetV2'.tr,
                        'https://github.com/ectrema/japanese_v2',
                        height: context.height * 0.15,
                      ),
                      ItemCarrousel(
                        'assets/pi_hole.png',
                        'presentationPiHoleProjet'.tr,
                        height: context.height * 0.2,
                      ),
                      ItemCarrousel(
                        'assets/mame.png',
                        'presentationMameProjet'.tr,
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

  Widget _buildInfos(String text, String text2) {
    return Container(
      width: (text.length + text2.length) * 17,
      margin: const EdgeInsets.fromLTRB(10, 15, 10, 15),
      color: Get.theme.accentColor.withOpacity(0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$text : ',
            style: Get.textTheme.subtitle1,
            overflow: TextOverflow.ellipsis,
          ),
          Flexible(
            child: Text(
              text2,
              style: Get.textTheme.subtitle1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
