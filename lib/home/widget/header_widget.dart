import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/core/translation/locale_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

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
          MediaQuery.of(context).size.width > 1050
              ? Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            InkWell(
                              onTap: () {
                                LocaleProvider provider =
                                    Provider.of<LocaleProvider>(
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
                      Container(
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
                      Container(
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
                      Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context)!.contact,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            LocaleProvider provider =
                                Provider.of<LocaleProvider>(
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
                        const SizedBox(width: 40),
                        InkWell(
                          onTap: () {
                            LocaleProvider provider =
                                Provider.of<LocaleProvider>(
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
                ),
        ],
      ),
    );
  }
}
