import 'package:flutter/material.dart';
import 'package:portofolio/core/widget/item_carousel.dart';
import 'package:portofolio/core/widget/item_inkwell_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AboutMeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Minel Benjamin'),
            Text('job'),
            Container(
              margin: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'info' + ' :',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Wrap(
                    children: [
                      _buildInfos('birthday', '16/07/1999', context),
                      _buildInfos('age',
                          '${DateTime.now().year - 1999}' + ' ' + 'year', context),
                      _buildInfos('mobility', 'driveLicense', context),
                      _buildInfos('company', 'myCompany', context),
                      _buildInfos('job', 'myJob', context),
                      _buildInfos('lastDegree', 'myLastDegree', context),
                      _buildInfos('interest', 'myInterest', context),
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
                      'mySkills' + ' :',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      _buildSkill('Flutter', context),
                      _buildSkill('Dart', context),
                      _buildSkill('Docker', context),
                      _buildSkill('Java', context),
                      _buildSkill('C++', context),
                      _buildSkill('C', context),
                      _buildSkill('Git', context),
                      _buildSkill('Linux', context),
                      _buildSkill('Jira', context),
                      _buildSkill('Sql', context),
                      _buildSkill('PhpMyAdmin', context),
                      _buildSkill('MacOs', context),
                      _buildSkill('Laravel 8', context),
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
                      'study' + ' :',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Row(
                    children: [
                      _buildStudy(
                          '24/08/20 - 07/09/21', 'licenceLyon', context),
                      _buildStudy('2018 - 2019', 'btsVenisieux', context),
                      _buildStudy('2017 - 2018', 'iutArles', context),
                      _buildStudy('2017', 'baccalaureate', context),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              // width: context.width,
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 20),
                    child: Text(
                      'myPersonalProject',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      ItemCarrousel(
                        'assets/raspberry_pi_4.png',
                        'presentationRaspberryPiProjet',
                      ),
                      ItemInkwellCarrousel(
                        'assets/go.png',
                        'presentationGoLangProjet',
                        'https://github.com/ectrema/translation_api',
                      ),
                      ItemInkwellCarrousel(
                        'assets/logo_appli_jap.png',
                        'presentationAppliJapProjetV1',
                        'https://github.com/ectrema/japan_kanji',
                        // height: context.height * 0.15,
                      ),
                      ItemInkwellCarrousel(
                        'assets/logo_appli_jap.png',
                        'presentationAppliJapProjetV2',
                        'https://github.com/ectrema/japanese_v2',
                        // height: context.height * 0.15,
                      ),
                      ItemCarrousel(
                        'assets/pi_hole.png',
                        'presentationPiHoleProjet',
                        // height: context.height * 0.2,
                      ),
                      ItemCarrousel(
                        'assets/mame.png',
                        'presentationMameProjet',
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
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: Theme.of(context).primaryColor,
          ),
        ),
        subtitle: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor.withOpacity(0.5),
          ),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }

  Widget _buildSkill(String skill, BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor.withOpacity(0.4),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(15),
      child: Text(
        skill,
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildInfos(String text, String text2, BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 15, 10, 15),
      padding: const EdgeInsets.all(15),
      color: Theme.of(context).accentColor.withOpacity(0.5),
      child: Text(
        '$text : $text2',
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
