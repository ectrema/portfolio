import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioWidget extends StatefulWidget {
  const PortfolioWidget({Key? key}) : super(key: key);

  @override
  _PortfolioWidgetState createState() => _PortfolioWidgetState();
}

class _PortfolioWidgetState extends State<PortfolioWidget> {
  bool isExtended = false;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.myPersonalProject,
            style: Theme.of(context).textTheme.headline2,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: 500,
            child: Divider(
              thickness: 3,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Text(
            AppLocalizations.of(context)!.myPersonalProjectsubtitle,
            style: Theme.of(context).textTheme.headline5,
          ),
          const Expanded(child: SizedBox()),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                _buildProject(
                  context,
                  'images/pi_hole.png',
                  AppLocalizations.of(context)!.presentationPiHoleProjet,
                  0,
                ),
                _buildProject(
                  context,
                  'images/golang.png',
                  AppLocalizations.of(context)!.presentationGoLangProjet,
                  1,
                  link: 'https://github.com/ectrema/translation_api',
                ),
                _buildProject(
                  context,
                  'images/raspberry_pi_4.png',
                  AppLocalizations.of(context)!.presentationRaspberryPiProjet,
                  2,
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                _buildProject(
                  context,
                  'images/jap_appli.png',
                  AppLocalizations.of(context)!.presentationAppliJapProjetV1,
                  3,
                  link: 'https://github.com/ectrema/japan_kanji',
                ),
                _buildProject(
                  context,
                  'images/jap_appli.png',
                  AppLocalizations.of(context)!.presentationAppliJapProjetV2,
                  4,
                  link: 'https://github.com/ectrema/japanese_v2',
                ),
                _buildProject(
                  context,
                  'images/mame.png',
                  AppLocalizations.of(context)!.presentationMameProjet,
                  5,
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }

  Expanded _buildProject(
    BuildContext context,
    String pathPicture,
    String textPresentation,
    int index, {
    String? link,
  }) {
    return Expanded(
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isExtended = true;
            currentIndex = index;
          });
        },
        onExit: (event) {
          setState(() {
            isExtended = false;
            currentIndex = 0;
          });
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).accentColor,
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: Image.asset(pathPicture),
            ),
            if (link != null)
              Positioned(
                top: 20,
                right: 20,
                child: InkWell(
                  onTap: () {
                    launch(
                      link,
                    );
                  },
                  child: Icon(
                    Mdi.github,
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
              ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).backgroundColor.withOpacity(0.8),
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                duration: const Duration(milliseconds: 400),
                height: isExtended && currentIndex == index
                    ? MediaQuery.of(context).size.height * 0.15
                    : 0,
                child: Text(
                  textPresentation,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
