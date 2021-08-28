import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:portofolio/core/widget/x_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeView extends StatelessWidget {
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
            style: Theme.of(context).textTheme.headline2,
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Theme.of(context).primaryColor,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.about,
                    style: Theme.of(context).textTheme.subtitle1,
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
                    'portofolio',
                    style: Theme.of(context).textTheme.subtitle1,
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
                    'contact',
                    style: Theme.of(context).textTheme.subtitle1,
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
      // height: context.height,
      // width: context.width,
      margin: const EdgeInsets.only(left: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bonjour je suis',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Benjamin Minel',
            style: Theme.of(context).textTheme.headline3,
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 15),
            width: 700,
            child: Text(
              AppLocalizations.of(context)!.myDescription,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    AppLocalizations.of(context)!.network + ' :',
                    style: Theme.of(context).textTheme.headline5,
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
                      style: Theme.of(context).textTheme.headline5,
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
