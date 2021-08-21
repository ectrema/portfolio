import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdi/mdi.dart';
import 'package:portofolio/core/widget/item_carousel.dart';
import 'package:portofolio/core/widget/item_inkwell_carousel.dart';
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
}
