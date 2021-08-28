import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/core/translation/locale_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HeaderWidget extends StatelessWidget {
  final ScrollController controller;
  const HeaderWidget(
    this.controller, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppLocalizations.of(context)!.portofolio,
            style: Theme.of(context).textTheme.headline2,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          LocaleProvider provider = Provider.of(
                            context,
                            listen: false,
                          );
                          provider.setLocal(Locale('fr', 'FR'));
                        },
                        child: SizedBox(
                          width: 25,
                          child: Flag.fromCode(FlagsCode.FR),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          LocaleProvider provider = Provider.of<LocaleProvider>(
                            context,
                            listen: false,
                          );
                          provider.setLocal(Locale('en', 'US'));
                        },
                        child: SizedBox(
                          width: 25,
                          child: Flag.fromCode(FlagsCode.US),
                        ),
                      ),
                    ],
                  ),
                ),
                if (MediaQuery.of(context).size.width > 720)
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).primaryColor,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.home,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width > 840)
                InkWell(
                  onTap: () {
                    controller.jumpTo(MediaQuery.of(context).size.height);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.about,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width > 960)
                InkWell(
                  onTap: () {
                    controller.jumpTo(MediaQuery.of(context).size.height * 2);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.portofolio,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width > 1080)
                InkWell(
                  onTap: () {
                    controller.jumpTo(MediaQuery.of(context).size.height * 3);
                  },
                  child: Container(
                    height: 100,
                    width: 130,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.mySkills,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width > 1200)
                  InkWell(
                    onTap: () {
                      controller
                          .jumpTo(MediaQuery.of(context).size.height * 4 - 75);
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.study,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
