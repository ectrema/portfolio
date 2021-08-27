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
            Text('Minel Benjamin'),
            Text('job'.tr),
            Container(
              margin: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
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
                      _buildInfos('age'.tr,
                          '${DateTime.now().year - 1999}' + ' ' + 'year'.tr),
                      _buildInfos('mobility'.tr, 'driveLicense'.tr),
                      _buildInfos('company'.tr, 'myCompany'.tr),
                      _buildInfos('job'.tr, 'myJob'.tr),
                      _buildInfos('lastDegree'.tr, 'myLastDegree'.tr),
                      _buildInfos('interest'.tr, 'myInterest'.tr),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'mySkills'.tr + ' :',
                      style: Get.textTheme.headline2,
                    ),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      _buildSkill('Flutter'),
                      _buildSkill('Dart'),
                      _buildSkill('Docker'),
                      _buildSkill('Java'),
                      _buildSkill('C++'),
                      _buildSkill('C'),
                      _buildSkill('Git'),
                      _buildSkill('Linux'),
                      _buildSkill('Jira'),
                      _buildSkill('Sql'),
                      _buildSkill('PhpMyAdmin'),
                      _buildSkill('MacOs'),
                      _buildSkill('Laravel 8'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Text(
                      'study'.tr + ' :',
                      style: Get.textTheme.headline2,
                    ),
                  ),
                  Row(
                    children: [
                      _buildStudy(
                          '24/08/20 - 07/09/21', 'licenceLyon'.tr, context),
                      _buildStudy('2018 - 2019', 'btsVenisieux'.tr, context),
                      _buildStudy('2017 - 2018', 'iutArles'.tr, context),
                      _buildStudy('2017', 'baccalaureate'.tr, context),
                    ],
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

  Widget _buildStudy(String date, String subtitle, BuildContext context) {
    return Expanded(
      child: ListTile(
        title: Text(
          date,
          style: Get.textTheme.subtitle1!.copyWith(
            color: Get.theme.primaryColor,
          ),
        ),
        subtitle: Container(
          height: _getHeight(context),
          decoration: BoxDecoration(
            color: Get.theme.accentColor.withOpacity(0.5),
          ),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            subtitle,
            style: Get.textTheme.bodyText1,
          ),
        ),
      ),
    );
  }

  double _getHeight(BuildContext context) =>
      (context.height / (context.width / 1000)) / 3;

  Widget _buildSkill(String skill) {
    return Container(
      color: Get.theme.primaryColor.withOpacity(0.4),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(15),
      child: Text(
        skill,
        style: Get.textTheme.subtitle1,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildInfos(String text, String text2) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 15, 10, 15),
      padding: const EdgeInsets.all(15),
      color: Get.theme.accentColor.withOpacity(0.5),
      child: Text(
        '$text : $text2',
        style: Get.textTheme.subtitle1,
      ),
    );
  }
}
