import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildMain(context);
  }

  Widget _buildMain(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.hiIm,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Benjamin Minel',
              style: Theme.of(context).textTheme.headline3,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              width: 700,
              child: Text(
                AppLocalizations.of(context)!.myDescription,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      AppLocalizations.of(context)!.network + ' :',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  MediaQuery.of(context).size.width > 600
                      ? Row(
                          children: [
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
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
                            )
                          ],
                        ),
                  InkWell(
                    onTap: () {
                      launch('document/cv_minel.pdf');
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      color: Theme.of(context).primaryColor,
                      margin: const EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      child: Text(
                        AppLocalizations.of(context)!.downloadCV,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
